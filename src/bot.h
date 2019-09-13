#ifndef BOT_H
#define BOT_H

#include "agent.h"
#include<fstream>

class bot: public agent, public std::enable_shared_from_this<bot>{
    public:
        /* 
            searchResponse accepts a string as a request from the user and search for
            the corresponding response in the file
        */
        static Message searchResponse(string &&req);

        /* 
            reply outputs the response message to the screen
        */ 
        void reply(Message &msg);
        bot(){}
        std::shared_ptr<bot> get_shared_this(){ return shared_from_this(); }

        void chat() {
            string req;
            future<Message> ftre;
            Message msg;
            while(true){
                req = getMessageQueue()->receive();
                
                ftre = async(&searchResponse, move(req));
                auto statut = ftre.wait_for(chrono::milliseconds(10));

                if(statut == future_status::ready){
                    msg = ftre.get();
                }
                else{
                    msg.setValue("Don't have enough time to process all the resources! :(");
                }
                unique_lock<mutex> ulock(_mtxcout);
                cout << "Bot  : ";
                reply(msg);
                cout<<endl;
                ulock.unlock();
                
                if(msg.getValue().find("See you next time") != string::npos)//Exit the chat ...
                    break;
            }
        }

        void start() {
            threads.emplace_back(thread(&bot::chat, this));
        }
};
#endif