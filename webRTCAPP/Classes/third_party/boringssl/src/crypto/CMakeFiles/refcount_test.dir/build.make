# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.8

# Delete rule output on recipe failure.
.DELETE_ON_ERROR:


#=============================================================================
# Special targets provided by cmake.

# Disable implicit rules so canonical targets will work.
.SUFFIXES:


# Remove some rules from gmake that .SUFFIXES does not remove.
SUFFIXES =

.SUFFIXES: .hpux_make_needs_suffix_list


# Suppress display of executed commands.
$(VERBOSE).SILENT:


# A target that is always out of date.
cmake_force:

.PHONY : cmake_force

#=============================================================================
# Set environment variables for the build.

# The shell in which to execute make rules.
SHELL = /bin/sh

# The CMake executable.
CMAKE_COMMAND = /usr/local/Cellar/cmake/3.8.0/bin/cmake

# The command to remove a file.
RM = /usr/local/Cellar/cmake/3.8.0/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src

# Include any dependencies generated for this target.
include crypto/CMakeFiles/refcount_test.dir/depend.make

# Include the progress variables for this target.
include crypto/CMakeFiles/refcount_test.dir/progress.make

# Include the compile flags for this target's objects.
include crypto/CMakeFiles/refcount_test.dir/flags.make

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o: crypto/CMakeFiles/refcount_test.dir/flags.make
crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o: crypto/refcount_test.cc
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o"
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/refcount_test.dir/refcount_test.cc.o -c /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto/refcount_test.cc

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/refcount_test.dir/refcount_test.cc.i"
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto/refcount_test.cc > CMakeFiles/refcount_test.dir/refcount_test.cc.i

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/refcount_test.dir/refcount_test.cc.s"
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto && /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto/refcount_test.cc -o CMakeFiles/refcount_test.dir/refcount_test.cc.s

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.requires:

.PHONY : crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.requires

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.provides: crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.requires
	$(MAKE) -f crypto/CMakeFiles/refcount_test.dir/build.make crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.provides.build
.PHONY : crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.provides

crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.provides.build: crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o


# Object files for target refcount_test
refcount_test_OBJECTS = \
"CMakeFiles/refcount_test.dir/refcount_test.cc.o"

# External object files for target refcount_test
refcount_test_EXTERNAL_OBJECTS =

crypto/refcount_test: crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o
crypto/refcount_test: crypto/CMakeFiles/refcount_test.dir/build.make
crypto/refcount_test: crypto/libcrypto.a
crypto/refcount_test: crypto/CMakeFiles/refcount_test.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Linking CXX executable refcount_test"
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto && $(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/refcount_test.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
crypto/CMakeFiles/refcount_test.dir/build: crypto/refcount_test

.PHONY : crypto/CMakeFiles/refcount_test.dir/build

crypto/CMakeFiles/refcount_test.dir/requires: crypto/CMakeFiles/refcount_test.dir/refcount_test.cc.o.requires

.PHONY : crypto/CMakeFiles/refcount_test.dir/requires

crypto/CMakeFiles/refcount_test.dir/clean:
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto && $(CMAKE_COMMAND) -P CMakeFiles/refcount_test.dir/cmake_clean.cmake
.PHONY : crypto/CMakeFiles/refcount_test.dir/clean

crypto/CMakeFiles/refcount_test.dir/depend:
	cd /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto /Users/raymon_wang/Documents/Develop/webrtc-source/src/third_party/boringssl/src/crypto/CMakeFiles/refcount_test.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : crypto/CMakeFiles/refcount_test.dir/depend
