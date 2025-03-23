#include <iostream>
#include <pthread.h>
#include <unistd.h>
using namespace std;
pthread_t t1;

class Base {
public:
       virtual void display() {
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

void* threadFunction(void* arg) {
    sleep(5);
    Base* baseRef = static_cast<Base*>(arg);
    baseRef->display();
    return nullptr;
}  

void createThread() {   
    Derived derivedObj; 
    basePtr = &derivedObj;    
    pthread_create(&t1, nullptr, threadFunction, basePtr);
    pthread_join(t1, nullptr);
}

int main() {
    createThread();
    std::cout << "Main thread finishes.\n";
    return 0;
}
