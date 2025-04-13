#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;
pthread_t t1, t2;

// Base class A
class A {
public:
    virtual void m1() {
        std::cout << "Base class m1\n";
    }
    
    void m2() {
        std::cout << "Base class m2\n";
    }

    
};
// A* basePtr;
// Derived class A1 overrides m1
class A1 : public A {
public:
    void m1() override {
        std::cout << "A1 class m1\n";
    }
};

// Derived class A2 overrides m2
class A2 : public A {
public:
    void m2() {
        std::cout << "A2 class m2\n";
    }
};

void* runThread1(void* arg) {
    sleep(5);
    A* basePtr = static_cast<A*>(arg);
    basePtr->m1();
    A1* a1Ptr = dynamic_cast<A1*>(basePtr);
    // if (a1Ptr) {
        a1Ptr->m1();
    // }
    return nullptr;
}

void* runThread2(void* arg) {
    sleep(5);
    A* basePtr = static_cast<A*>(arg);
    basePtr->m2();
    A2* a2Ptr = dynamic_cast<A2*>(basePtr);
    // if (a2Ptr) {
        a2Ptr->m2();
    // }
    return nullptr;
}

void createThread() {
    A1 a1Obj;
    A2 a2Obj;

    pthread_create(&t1, nullptr, runThread1, &a1Obj);
    pthread_join(t1, nullptr);
    
    pthread_create(&t2, nullptr, runThread2, &a2Obj);
    pthread_join(t2, nullptr);
}

int main() {
    createThread();
    return 0;
}
