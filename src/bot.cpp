#include "bot.h"

Message bot::searchResponse(string req){
    ifstream stream("../data/chat.txt");
    string li;
    if(stream){
        string line;
        bool found = false;
        while(getline(stream, line)){
            if(line.find(req)!= string::npos){
                found = true;
                continue;
            }
            if(found){//The next line is the reply from the bot
                li = line;
                break;
            }
        }
        if(!found){
            li =  "Oups sorry, Can't help you on this!";
        }
    }
    Message msg(li);
    return msg;
}

string bot::readFile(string &str){
    ifstream stream("../data/chat.txt");
    if(stream){
        string line;
        bool found = false;
        while(getline(stream, line)){
            if(line.find(str)!= string::npos){
                found = true;
                continue;
            }
            if(found){//The next line is the reply from the bot
                return line;
            }
        }
        if(!found){
            return "Oups sorry, Can't help you on this!";
        }
    }
}

void bot::reply (Message &msg){
    msg.botTyping();
}

