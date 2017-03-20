#include "webrtc/modules/audio_processing/vad/voice_activity_detector.h"
#include <algorithm>
#include "webrtc/base/checks.h"

namespace webrtc {
namespace {

const int kMaxLength = 320;
const int kNumChannels = 1;

const double kDefaultVoiceValue = 1.0;
const double kNeutralProbability = 0.5;
const double kLowProbability = 0.01;

}  // namespace

VoiceActivityDetector::VoiceActivityDetector()
    : last_voice_probability_(kDefaultVoiceValue),
      standalone_vad_(StandaloneVad::Create()) {
}

VoiceActivityDetector::~VoiceActivityDetector() = default;

// Because ISAC has a different chunk length, it updates
// |chunkwise_voice_probabilities_| and |chunkwise_rms_| when there is new data.
// Otherwise it clears them.
void VoiceActivityDetector::ProcessChunk(const int16_t* audio,
                                         int length,
                                         int sample_rate_hz) {
  DCHECK_EQ(static_cast<int>(length), sample_rate_hz / 100);
  DCHECK_LE(length, kMaxLength);
  // Resample to the required rate.
  const int16_t* resampled_ptr = audio;
  if (sample_rate_hz != kSampleRateHz) {
    CHECK_EQ(
        resampler_.ResetIfNeeded(sample_rate_hz, kSampleRateHz, kResamplerSynchronous),
        0);
	
    resampler_.Push(audio, length, resampled_, kLength10Ms, length);
    resampled_ptr = resampled_;
  }
  DCHECK_EQ(length, kLength10Ms);

  // Each chunk needs to be passed into |standalone_vad_|, because internally it
  // buffers the audio and processes it all at once when GetActivity() is
  // called.
  CHECK_EQ(standalone_vad_->AddAudio(resampled_ptr, length), 0);

  audio_processing_.ExtractFeatures(resampled_ptr, length, &features_);

  chunkwise_voice_probabilities_.resize(features_.num_frames);
  chunkwise_rms_.resize(features_.num_frames);
  std::copy(features_.rms, features_.rms + chunkwise_rms_.size(),
            chunkwise_rms_.begin());
  if (features_.num_frames > 0) {
    if (features_.silence) {
      // The other features are invalid, so set the voice probabilities to an
      // arbitrary low value.
      std::fill(chunkwise_voice_probabilities_.begin(),
                chunkwise_voice_probabilities_.end(), kLowProbability);
    } else {
      std::fill(chunkwise_voice_probabilities_.begin(),
                chunkwise_voice_probabilities_.end(), kNeutralProbability);
      CHECK_GE(
          standalone_vad_->GetActivity(&chunkwise_voice_probabilities_[0],
                                       chunkwise_voice_probabilities_.size()),
          0);
      CHECK_GE(pitch_based_vad_.VoicingProbability(
                       features_, &chunkwise_voice_probabilities_[0]),
                   0);
    }
    last_voice_probability_ = chunkwise_voice_probabilities_.back();
  }
}

}  // namespace webrtc
