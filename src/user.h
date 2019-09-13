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
            string message, _tmp;
            while(true){
                unique_lock<mutex> lock(_mtxcout);
                cout <<"User : ";
                getline(cin, message);
                cout<<endl;
                _tmp = message;
                lock.unlock();
                getMessageQueue()->send(move(message));
                
                //Gives time to the bot to retrieve the request and print the response
                this_thread::sleep_for(chrono::milliseconds(50));
                
                if(_tmp.find("Good bye") != string::npos) //Exit the chat ...
                    break;
            }
        }

        void start() {
            threads.emplace_back(thread(&user::chat, this));
        }
    private:
        string name;
};

#endif