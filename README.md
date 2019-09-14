# ChatBot

## 1. Overview
ChatBot is a multithreaded application which allows a user to chat with the computer. It launches three threads on start:
  * One for the bot
  * One for the user
  * The main thread

The corresponding answers to requests from a user are stored in a file, `chat.txt` located in the `data` directory. Whenever a request is not found in the file, an appropriate message is output to the screen.
## 2. Instructions for running the project
To run the ChatBot, cd into the `build` directory and type **`./chat_bot`** then hit enter. You are now ready to chat with the bot. 

The intelligence given to the bot here is quite basic. To enjoy the chat, open the `chat.txt` file. It is organised as line-separated groups of request/response. The user enters the request and the bot reads the appropriate response from the file and prints it to the screen. Make sure to enter the request as is otherwise the bot will not consider it, except for the greetings where you have three choices.

To exit the app, just use the last group of request/response. 

## 3. Code structure
The project makes use of nine files:
* agent.h
* agent.cpp
* bot.h
* bot.cpp
* user.h
* user.cpp
* chatRoom.h
* chatRoom.cpp
* chatMain.cpp

`agent.h` implements the base class `agent` which has two virtual functions `start()` and `chat()`. Each of `bot` and `user` will define theses methods with custom logic specific to each of them. `start()` creates a thread and passes `chat()` to it as the thread function. 

`chatRoom.h` implements the class `chatRoom` which defines three private members as shared pointers to `bot`, `user` and `MessageQueue<string>`. The latter defines a message queue which will structure the communication between the bot and the user. A shared pointer to it will be set to both the bot and the user. The class `chatRoom` also defines a method `begin()` which will start the user and the bot.

`chatMain.cpp` creates an instance of the class `chatRoom` and calls its method `begin()` to start the chat. 

## 4. How the project meets the specifications
The project meets the specifications because the following `C++` features has been used.
* Inheritance
* Abstract class
* Shared Pointers
* Use of external file to read data from
* acceptance of User input
* Use of references and move semantics
* Multiple threads
* Condition variable, lock and mutexes


