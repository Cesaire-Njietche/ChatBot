#ifndef CHATROOM_H
#define CHATROOM_H

#include<mutex>
#include<vector>

#include "bot.h"
#include "user.h"


class chatRoom{
    public:
        chatRoom():_bot(new bot), _user(new user), _msgQueue(new MessageQueue<string>){}
        void begin();//starts both the bot and the user threads

    private:
        shared_ptr<bot> _bot;
        shared_ptr<user> _user;
        shared_ptr<MessageQueue<string>> _msgQueue; 
};
#endif