#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;

thread t1;

// Base class A (with virtual inheritance to create a diamond)
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
class A1 : virtual public A {  // Virtual inheritance
public:
    void m1() override  {
        std::cout << "A1 class m1\n";
    }
};

// Derived class A2 overrides m2
class A2 : virtual public A {  // Virtual inheritance
public:
    void m2() {
        std::cout << "A2 class m2\n";
    }
};

// Class A12 inherits from both A1 and A2 (diamond problem)
class A12 : public A1, public A2 {
public:
    void m1() override {
        std::cout << "A12 class m1\n";
    }
};

// Function to run a thread and perform reinterpret_cast
void runThread(A* basePtr) {
    // Access the base class virtual function
    basePtr->m1();
}

// Function to create threads and pass objects
A1 a1Obj;
void createThread() {
    // Create an object of A12 (diamond problem)
    A12 a12Obj;

    // Upcast to A* and pass to runThread
    A* basePtr = &a1Obj;

    // Call runThread for the A12 object
    t1 = thread(runThread, basePtr);
    t1.join();
}

int main() {
    // Create threads
    createThread();
    // t1.join();

    return 0;
}
