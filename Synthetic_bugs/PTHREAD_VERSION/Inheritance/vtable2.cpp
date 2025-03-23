#include <iostream>
#include <pthread.h>
#include <unistd.h>
#include <chrono>
#include <thread>

class Base {
public:
    virtual void func1() {
        std::cout << "Base::func1" << std::endl;
    }
    virtual void func2() {
        std::cout << "Base::func2" << std::endl;
    }
    virtual void func3() {
        std::cout << "Base::func3" << std::endl;
    }
    void func4() {
        std::cout << "Base::func4" << std::endl;
    }
    void func5() {
        std::cout << "Base::func5" << std::endl;
    }
};

class Derived : public Base {
public:
    void func1() override {
        std::cout << "Derived::func1" << std::endl;
    }
    void func2() override {
        std::cout << "Derived::func2" << std::endl;
    }
    void func3() override {
        std::cout << "Derived::func3" << std::endl;
    }
    void func4() override {
        std::cout << "Derived::func4" << std::endl;
    }
    void func5() override {
        std::cout << "Derived::func5" << std::endl;
    }
};

Base* basePtr = nullptr;
pthread_t t1;

void* threadFunc(void* arg) {
    std::this_thread::sleep_for(std::chrono::milliseconds(10000)); // Ensure thread starts
    if (basePtr) {
        std::cout << "Thread accessing deleted object's func(): ";
        basePtr->func4();  // Use-After-Scope issue
    }
    return nullptr;
}

void startThread() {
    Derived DerivedObj;  // Stack allocation
    basePtr = &DerivedObj;
    pthread_create(&t1, nullptr, threadFunc, nullptr);
    pthread_join(t1, nullptr);
}

int main() {
    startThread();
    return 0;
}