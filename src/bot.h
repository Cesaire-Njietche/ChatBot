#ifndef BOT_H
#define BOT_H

#include "agent.h"
#include<fstream>

class bot: public agent, public std::enable_shared_from_this<bot>{
    public:
        static Message searchResponse(string req);
        void reply(Message &msg);
        bot(){}
        std::shared_ptr<bot> get_shared_this(){ return shared_from_this(); }

        void chat() {
            string req;
            future<Message> ftre;
            Message msg;
            while(true){
                cout<<"msg queue bot:"<<getMessageQueue()->size()<<endl;
                req = getMessageQueue()->receive();
                
                cout<<"Request :"<<req<<endl;
                ftre = async(&searchResponse, req);
                auto statut = ftre.wait_for(chrono::milliseconds(1));

                if(statut == future_status::ready){
                    msg = ftre.get();
                }
                else{
                    msg.setValue("Don't have enough time to process all the resources! :(");
                }
            
                unique_lock<mutex> ulock(_mtxcout);
                reply(msg);
                ulock.unlock();
            }
        }

        void start() {
            threads.emplace_back(thread(&bot::chat, this));
        }
    private:
        string readFile(string &str);//Read the db/file to get the response of the user

};
#endif