#include <iostream>
#include <pthread.h>
#include <unistd.h>

class Base1 {
public:
    void display() {
        std::cout << "Base1 display\n";
    }
};

class Base2 {
public:
    virtual void display() {
        std::cout << "Base2 display\n";
    }
};

class Derived1 : public Base1 {
public:
    void display() {
        std::cout << "Derived1 display\n";
    }
};

class Derived2 : public Base2 {
public:
    void display() override {
        std::cout << "Derived2 display\n";
    }
};

Derived2* derived2Ptr;
pthread_t t1;

void* threadFunction(void* arg) {
    sleep(5);
    Derived2* derivedRef = static_cast<Derived2*>(arg);
    derivedRef->display();
    return nullptr;
}

void createThread() {
    Derived1 derived1Obj;
    Derived2 derived2Obj;
    derived2Ptr = reinterpret_cast<Derived2*>(&derived1Obj);
    pthread_create(&t1, nullptr, threadFunction, derived2Ptr);
    pthread_join(t1, nullptr);
}

int main() {
    createThread();
    std::cout << "Main thread finishes.\n";
    return 0;
}