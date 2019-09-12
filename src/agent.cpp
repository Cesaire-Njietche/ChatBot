#include "agent.h"

mutex agent::_mtxcout;

void Message::botTyping(){
    for(const char c: value){
        this_thread::sleep_for(chrono::milliseconds(1000));
        cout<<c<<flush;
    }
   
    cout<<endl;
}

agent::agent(){}
agent::~agent(){
    for(auto &thr: threads)
        thr.join();
}