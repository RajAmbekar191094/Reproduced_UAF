#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;
thread t1;

class Base {
public:
        void display() {
        cout << "Base display"<<"\n";
    }
};
Base* basePtr;
class Derived : public Base {
public:
    void display()  {
        cout << "Derived display"<<"\n";
    }
};

void threadFunction(Base *baseRef) {
    sleep(5);
    baseRef->display();
}  
void createThread()  
{   
    
    Derived derivedObj; 
    basePtr = &derivedObj;    
    t1=thread(threadFunction,basePtr);
     //t1.join();
}
int main() {
    createThread();
    t1.join();
    cout << "Main thread finishes.\n";
    return 0;
}
