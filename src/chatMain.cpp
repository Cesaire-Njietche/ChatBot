#include "chatRoom.h"

void clearScreen(){
    cout << "\033[2J\033[1;1H";
}
int main(){
    chatRoom cr;
    clearScreen();
    cout<<"\n\n--------------- I'm a ChatBot, I'm here to help :). let's talk ---------------- \n\n";
    cr.begin();
    return 0;
}