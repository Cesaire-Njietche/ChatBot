#ifndef CHATROOM_H
#define CHATROOM_H

#include<mutex>
#include<vector>

#include "bot.h"
#include "user.h"


class chatRoom{
    public:
        chatRoom(int num): userNumber(num),_bot(new bot), _user(new user), _msgQueue(new MessageQueue<string>){
            initUserList();
            //_bot = make_shared<bot>();
            //_msgQueue = make_shared<MessageQueue<string>>();
        }
        chatRoom():userNumber(1),_bot(new bot), _user(new user), _msgQueue(new MessageQueue<string>){//By default, there is one user
            initUserList();
            //_bot = make_shared<bot>();
            //_msgQueue = make_shared<MessageQueue<string>>();
        }
        void initUserList();

        void begin();
        int numberOfUser() const{return _userList.size();}

    private:
        shared_ptr<bot> _bot;
        shared_ptr<user> _user;
        vector<shared_ptr<user>> _userList; //Assuming many user can interact with the bot inside the chatroom
        shared_ptr<MessageQueue<string>> _msgQueue; 
        int userNumber;
};
#endif