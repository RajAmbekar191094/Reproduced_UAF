#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;
thread t1,t2;

class Base {
public:
    virtual void func1() {
        std::cout << "Base::func1" << endl;
    }
    virtual void func2() {
        std::cout << "Base::func2" << endl;
    }
    virtual void func3() {
        std::cout << "Base::func3" << endl;
    }
    void func4() {
        std::cout << "Base::func4" << endl;
    }
    void func5() {
        std::cout << "Base::func5" << endl;
    }
    
};

class Derived : public Base {
public:
    void func1() override {
        std::cout << "Derived::func1" << endl;
    }
    void func2() override {
        std::cout << "Derived::func2" << endl;
    }
    void func3() override {
        std::cout << "Derived::func3" << endl;
    }
    void func4()  {
        std::cout << "Derived::func4" <<endl;
    }
    void func5()  {
        std::cout << "Derived::func5" <<endl;
    }

};

// Global pointer to introduce Use-After-Scope
Base* basePtr = nullptr;

void threadFunc(Base* basePtr) {
    int derived=0;
    // if(derived)
    // {
        basePtr->func1();
        basePtr->func2();
        basePtr->func3();
    // }
    // else
    // {
        basePtr->func4();
        basePtr->func5();
    // }
    
    
    
}

void startThread() {
    Derived DerivedObj;  // Stack allocation
    // Base b;
    // b.func1();
    basePtr = &DerivedObj;

     t1=thread(threadFunc,basePtr);
     
    

    t1.join();
    
}

int main() {
    startThread();
    // t1.join();

    return 0;
}
