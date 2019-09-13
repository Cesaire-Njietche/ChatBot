#include "chatRoom.h"

void chatRoom::begin(){
    _user->setMessageQueue(_msgQueue);
    _user->start();
    this_thread::sleep_for(chrono::milliseconds(1));
    _bot->setMessageQueue(_msgQueue);
    _bot->start();
}