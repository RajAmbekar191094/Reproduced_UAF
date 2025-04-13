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

class A1 : virtual public A {
public:
    void m1() override {
        std::cout << "A1 class m1\n";
    }
};

class A2 : virtual public A {
public:
    void m2() {
        std::cout << "A2 class m2\n";
    }
};

class A12 : public A1, public A2 {
public:
    void m1() override {
        std::cout << "A12 class m1\n";
    }
};

pthread_t t1;

void* runThread(void* arg) {
    A* basePtr = static_cast<A*>(arg);
    basePtr->m1();
    return nullptr;
}

void createThread() {
    A12 a12Obj;
    A12* basePtr = &a12Obj;
    pthread_create(&t1, nullptr, runThread, basePtr);
}

int main() {
    createThread();
    pthread_join(t1, nullptr);
    return 0;
}
