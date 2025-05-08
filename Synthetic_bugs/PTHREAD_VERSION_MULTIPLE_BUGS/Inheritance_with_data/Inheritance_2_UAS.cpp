#include <iostream>
#include <pthread.h>
#include <unistd.h>

class Base {
    // private:
   
public:
int a=10;
    void display() {
        std::cout << "Base display:" <<a<<"\n";
    }
};

Base* basePtr;

class Derived : public Base {
public:
    int b=20;
    void display() {
        std::cout << "Derived display" <<b<< "\n";
    }
};

pthread_t t1,t2;

void* threadFunction(void* arg) {
    sleep(5);
    Base* baseRef = static_cast<Base*>(arg);
    baseRef->display();
    return nullptr;
}  

void createThread() {   
    Derived derivedObj1,derivedObj2; 
    basePtr = &derivedObj1;    
    pthread_create(&t1, nullptr, threadFunction, basePtr);
    basePtr = &derivedObj2;  
    pthread_create(&t2, nullptr, threadFunction, basePtr);
}  

int main() {
    createThread();
    pthread_join(t1, nullptr);
    pthread_join(t2, nullptr);
    std::cout << "Main thread finishes.\n";
    return 0;
}