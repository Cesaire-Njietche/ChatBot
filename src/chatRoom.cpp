#include "chatRoom.h"

void chatRoom::initUserList(){
    for(int i = 0; i < userNumber; i++)
        _userList.push_back(make_shared<user>());
}

void chatRoom::begin(){
    _user->setMessageQueue(_msgQueue);
    _user->start();
    this_thread::sleep_for(chrono::milliseconds(1));
    _bot->setMessageQueue(_msgQueue);
    _bot->start();
    /*for(size_t i = 0; i < _userList.size(); i++){
        _userList.at(i)->setMessageQueue(_msgQueue);
        _userList.at(i)->start();
    }*/
}