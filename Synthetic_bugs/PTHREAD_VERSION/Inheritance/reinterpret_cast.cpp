#include <iostream>
#include <pthread.h>
#include <unistd.h>

class A {
public:
    virtual void m1() {
        std::cout << "Base class m1\n";
    }
    
    void m2() {
        std::cout << "Base class m2\n";
    }
};

class A1 : public A {
public:
    void m1() override {
        std::cout << "A1 class m1\n";
    }
};

class A2 : public A {
public:
    void m2() {
        std::cout << "A2 class m2\n";
    }
};

pthread_t t1;

void* runThread(void* arg) {
    A* basePtr = static_cast<A*>(arg);
    basePtr->m1();
    basePtr->m2();
    
    A2* a2Ptr = reinterpret_cast<A2*>(basePtr);
    a2Ptr->m2();
    
    A1* a1Ptr = reinterpret_cast<A1*>(basePtr);
    a1Ptr->m1();
    
    return nullptr;
}

void createThread() {
    A1 a1Obj;
    A* basePtr = &a1Obj;
    pthread_create(&t1, nullptr, runThread, basePtr);
    pthread_join(t1, nullptr);
}

int main() {
    createThread();
    return 0;
}
