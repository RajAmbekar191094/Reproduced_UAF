#include <iostream>
#include <pthread.h>
#include <unistd.h>

class Base {
public:
    void display() {
        std::cout << "Base display" << "\n";
    }
};

Base* basePtr;

class Derived : public Base {
public:
    void display() {
        std::cout << "Derived display" << "\n";
    }
};

pthread_t t1;

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
}  

int main() {
    createThread();
    pthread_join(t1, nullptr);
    std::cout << "Main thread finishes.\n";
    return 0;
}