#include "bot.h"

Message bot::searchResponse(string &&req){
    ifstream stream("../data/chat.txt");
    string li;
    if(stream){
        string line;
        bool found = false;
        while(getline(stream, line)){
            if(line.find(req)!= string::npos and !found){
                found = true;
                continue;
            }
            if(found){//The next line is the reply from the bot
                li = line;
                break;
            }
        }
        if(!found){ //The request from the user is not found in the db/file
            li =  "Oups sorry, Can't help you on this!";
        }
    }
    Message msg(li);
    return msg;
}

void bot::reply (Message &msg){
    msg.botTyping();
}

