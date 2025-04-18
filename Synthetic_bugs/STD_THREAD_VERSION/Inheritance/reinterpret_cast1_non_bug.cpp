#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;

thread t1;

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

// Function to run a thread and perform reinterpret_cast
void runThread(A* basePtr) {
    // Access the base class virtual function
    basePtr->m2();
    // basePtr->m2();

   
}


void createThread() {
    // Create an object of A1
    A1 a1Obj;

    //crosscast
    A2* a2Ptr = reinterpret_cast<A2*>(&a1Obj);
    // Upcast to A* and pass to runThread
    A* basePtr = a2Ptr;

    // Call runThread for the A1 object
    t1 = thread(runThread, basePtr);
    // t1.join();
}

int main() {
    // Create threads
    createThread();
    t1.join();

    return 0;
}
