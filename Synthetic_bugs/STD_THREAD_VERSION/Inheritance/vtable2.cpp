#include <iostream>
#include <thread>
#include <chrono>

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

// Global pointer to introduce Use-After-Scope
Base* basePtr = nullptr;

void threadFunc() {
   

    if (globalPtr) {
        std::cout << "Thread accessing deleted object's func(): ";
        globalPtr->func();  // Use-After-Scope: Possible garbage or crash
    }
}

void startThread() {
    Derived DerivedObj;  // Stack allocation
    basePtr = &DerivedObj;

    std::thread t2(threadFunc);
    std::this_thread::sleep_for(std::chrono::milliseconds(10000)); // Ensure t2 starts

    t2.join();
    // obj goes out of scope here, causing Use-After-Scope when threadFunc() runs
}

int main() {
    startThread();
    t1.join();

    return 0;
}
