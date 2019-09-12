#include "agent.h"

mutex agent::_mtxcout;

void Message::botTyping(){
    istringstream stream(value);
    char c;
    cout << "__";
    while(stream >> c){
        this_thread::sleep_for(chrono::milliseconds(500));
        cout<<c;
    }
    cout<<endl;
}

agent::agent(){}
agent::~agent(){
    for(auto &thr: threads)
        thr.join();
}