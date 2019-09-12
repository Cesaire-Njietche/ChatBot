#ifndef AGENT_H
#define AGENT_H

#include<future>
#include<mutex>
#include<memory>
#include<thread>
#include<chrono>
#include<string>
#include<queue>
#include<iostream>
#include<sstream>

using namespace std;

class Message{ //Every message from the file chat.txt is wrapped into this class
    public:
        Message(string val):value(val){}
        Message(){}

        string getValue() const{return value;}
        void setValue(string val){value = val;}
        void botTyping(); //Mimic the typing of this message by the bot on the screen like a human
    private:
        string value;
};

template<class T>
class MessageQueue{
    public:
        T receive(){
            unique_lock<mutex> ulock(_mtx);
            _cond.wait(ulock, [this]{return !_message.empty();});

            T msg = move(_message.front());
            _message.pop_front();

            return msg;
        }
        void send(T &&msg){
            lock_guard<mutex> lock(_mtx);
            _message.push_back(move(msg));

            _cond.notify_one();
        }
        int size(){return _message.size();}
    private:
        mutex _mtx;
        condition_variable _cond;
        deque<T> _message;
};

class agent{ //user and the bot classes inherit from this class
    public:
        virtual void start(){};
        virtual void chat(){};
        void setMessageQueue(shared_ptr<MessageQueue<string>> mq) {_msgq = mq;}
        shared_ptr<MessageQueue<string>> getMessageQueue()const{return _msgq;}

        //constructor & destructor
        agent();
        ~agent();
    protected:
        vector<thread> threads;
        shared_ptr<MessageQueue<string>> _msgq;
        static mutex _mtxcout; 
};

#endif