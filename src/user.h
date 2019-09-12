#ifndef USER_H
#define USER_H

#include "agent.h"


class user : public agent, public std::enable_shared_from_this<user>{
    public:
        user(string val):name(val){}
        user(){}

        string getName() const{return name;}
        void setName(string val){name = val;}
        std::shared_ptr<user> get_shared_this() { return shared_from_this(); }

        void chat() {
            string message;
            while(true){
                unique_lock<mutex> lock(_mtxcout);
                cout <<"User : ";
                getline(cin, message);
                lock.unlock();
                getMessageQueue()->send(move(message));
    
                this_thread::sleep_for(chrono::milliseconds(10));//Gives time to the bot to retrieve the request
            }
        }

        void start() {
            threads.emplace_back(thread(&user::chat, this));
        }
    private:
        string name;
};

#endif