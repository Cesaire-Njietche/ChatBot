# CMAKE generated file: DO NOT EDIT!
# Generated by "Unix Makefiles" Generator, CMake Version 3.15

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
CMAKE_COMMAND = /home/katelynn/Downloads/cmake-3.15.2-Linux-x86_64/bin/cmake

# The command to remove a file.
RM = /home/katelynn/Downloads/cmake-3.15.2-Linux-x86_64/bin/cmake -E remove -f

# Escaping for special characters.
EQUALS = =

# The top-level source directory on which CMake was run.
CMAKE_SOURCE_DIR = /home/katelynn/Desktop/ChatBot

# The top-level build directory on which CMake was run.
CMAKE_BINARY_DIR = /home/katelynn/Desktop/ChatBot/build

# Include any dependencies generated for this target.
include CMakeFiles/chat_bot.dir/depend.make

# Include the progress variables for this target.
include CMakeFiles/chat_bot.dir/progress.make

# Include the compile flags for this target's objects.
include CMakeFiles/chat_bot.dir/flags.make

CMakeFiles/chat_bot.dir/src/agent.cpp.o: CMakeFiles/chat_bot.dir/flags.make
CMakeFiles/chat_bot.dir/src/agent.cpp.o: ../src/agent.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_1) "Building CXX object CMakeFiles/chat_bot.dir/src/agent.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_bot.dir/src/agent.cpp.o -c /home/katelynn/Desktop/ChatBot/src/agent.cpp

CMakeFiles/chat_bot.dir/src/agent.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_bot.dir/src/agent.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/katelynn/Desktop/ChatBot/src/agent.cpp > CMakeFiles/chat_bot.dir/src/agent.cpp.i

CMakeFiles/chat_bot.dir/src/agent.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_bot.dir/src/agent.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/katelynn/Desktop/ChatBot/src/agent.cpp -o CMakeFiles/chat_bot.dir/src/agent.cpp.s

CMakeFiles/chat_bot.dir/src/bot.cpp.o: CMakeFiles/chat_bot.dir/flags.make
CMakeFiles/chat_bot.dir/src/bot.cpp.o: ../src/bot.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_2) "Building CXX object CMakeFiles/chat_bot.dir/src/bot.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_bot.dir/src/bot.cpp.o -c /home/katelynn/Desktop/ChatBot/src/bot.cpp

CMakeFiles/chat_bot.dir/src/bot.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_bot.dir/src/bot.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/katelynn/Desktop/ChatBot/src/bot.cpp > CMakeFiles/chat_bot.dir/src/bot.cpp.i

CMakeFiles/chat_bot.dir/src/bot.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_bot.dir/src/bot.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/katelynn/Desktop/ChatBot/src/bot.cpp -o CMakeFiles/chat_bot.dir/src/bot.cpp.s

CMakeFiles/chat_bot.dir/src/chatMain.cpp.o: CMakeFiles/chat_bot.dir/flags.make
CMakeFiles/chat_bot.dir/src/chatMain.cpp.o: ../src/chatMain.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_3) "Building CXX object CMakeFiles/chat_bot.dir/src/chatMain.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_bot.dir/src/chatMain.cpp.o -c /home/katelynn/Desktop/ChatBot/src/chatMain.cpp

CMakeFiles/chat_bot.dir/src/chatMain.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_bot.dir/src/chatMain.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/katelynn/Desktop/ChatBot/src/chatMain.cpp > CMakeFiles/chat_bot.dir/src/chatMain.cpp.i

CMakeFiles/chat_bot.dir/src/chatMain.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_bot.dir/src/chatMain.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/katelynn/Desktop/ChatBot/src/chatMain.cpp -o CMakeFiles/chat_bot.dir/src/chatMain.cpp.s

CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o: CMakeFiles/chat_bot.dir/flags.make
CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o: ../src/chatRoom.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_4) "Building CXX object CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o -c /home/katelynn/Desktop/ChatBot/src/chatRoom.cpp

CMakeFiles/chat_bot.dir/src/chatRoom.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_bot.dir/src/chatRoom.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/katelynn/Desktop/ChatBot/src/chatRoom.cpp > CMakeFiles/chat_bot.dir/src/chatRoom.cpp.i

CMakeFiles/chat_bot.dir/src/chatRoom.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_bot.dir/src/chatRoom.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/katelynn/Desktop/ChatBot/src/chatRoom.cpp -o CMakeFiles/chat_bot.dir/src/chatRoom.cpp.s

CMakeFiles/chat_bot.dir/src/user.cpp.o: CMakeFiles/chat_bot.dir/flags.make
CMakeFiles/chat_bot.dir/src/user.cpp.o: ../src/user.cpp
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_5) "Building CXX object CMakeFiles/chat_bot.dir/src/user.cpp.o"
	/usr/bin/c++  $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -o CMakeFiles/chat_bot.dir/src/user.cpp.o -c /home/katelynn/Desktop/ChatBot/src/user.cpp

CMakeFiles/chat_bot.dir/src/user.cpp.i: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Preprocessing CXX source to CMakeFiles/chat_bot.dir/src/user.cpp.i"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -E /home/katelynn/Desktop/ChatBot/src/user.cpp > CMakeFiles/chat_bot.dir/src/user.cpp.i

CMakeFiles/chat_bot.dir/src/user.cpp.s: cmake_force
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green "Compiling CXX source to assembly CMakeFiles/chat_bot.dir/src/user.cpp.s"
	/usr/bin/c++ $(CXX_DEFINES) $(CXX_INCLUDES) $(CXX_FLAGS) -S /home/katelynn/Desktop/ChatBot/src/user.cpp -o CMakeFiles/chat_bot.dir/src/user.cpp.s

# Object files for target chat_bot
chat_bot_OBJECTS = \
"CMakeFiles/chat_bot.dir/src/agent.cpp.o" \
"CMakeFiles/chat_bot.dir/src/bot.cpp.o" \
"CMakeFiles/chat_bot.dir/src/chatMain.cpp.o" \
"CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o" \
"CMakeFiles/chat_bot.dir/src/user.cpp.o"

# External object files for target chat_bot
chat_bot_EXTERNAL_OBJECTS =

chat_bot: CMakeFiles/chat_bot.dir/src/agent.cpp.o
chat_bot: CMakeFiles/chat_bot.dir/src/bot.cpp.o
chat_bot: CMakeFiles/chat_bot.dir/src/chatMain.cpp.o
chat_bot: CMakeFiles/chat_bot.dir/src/chatRoom.cpp.o
chat_bot: CMakeFiles/chat_bot.dir/src/user.cpp.o
chat_bot: CMakeFiles/chat_bot.dir/build.make
chat_bot: CMakeFiles/chat_bot.dir/link.txt
	@$(CMAKE_COMMAND) -E cmake_echo_color --switch=$(COLOR) --green --bold --progress-dir=/home/katelynn/Desktop/ChatBot/build/CMakeFiles --progress-num=$(CMAKE_PROGRESS_6) "Linking CXX executable chat_bot"
	$(CMAKE_COMMAND) -E cmake_link_script CMakeFiles/chat_bot.dir/link.txt --verbose=$(VERBOSE)

# Rule to build all files generated by this target.
CMakeFiles/chat_bot.dir/build: chat_bot

.PHONY : CMakeFiles/chat_bot.dir/build

CMakeFiles/chat_bot.dir/clean:
	$(CMAKE_COMMAND) -P CMakeFiles/chat_bot.dir/cmake_clean.cmake
.PHONY : CMakeFiles/chat_bot.dir/clean

CMakeFiles/chat_bot.dir/depend:
	cd /home/katelynn/Desktop/ChatBot/build && $(CMAKE_COMMAND) -E cmake_depends "Unix Makefiles" /home/katelynn/Desktop/ChatBot /home/katelynn/Desktop/ChatBot /home/katelynn/Desktop/ChatBot/build /home/katelynn/Desktop/ChatBot/build /home/katelynn/Desktop/ChatBot/build/CMakeFiles/chat_bot.dir/DependInfo.cmake --color=$(COLOR)
.PHONY : CMakeFiles/chat_bot.dir/depend

