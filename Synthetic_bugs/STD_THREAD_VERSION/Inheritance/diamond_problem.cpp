#include <iostream>
#include <thread>
#include <unistd.h>

using namespace std;

thread t1;

// Base class A (with virtual inheritance to create a diamond)
class A {
public:
     void m1() {
        std::cout << "Base class m1\n";
    }

    void m2() {
        std::cout << "Base class m2\n";
    }

    virtual ~A() {}  // Ensure proper cleanup
};

// Derived class A1 overrides m1
class A1 : virtual public A {  // Virtual inheritance
public:
    void m1()  {
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
    void m1()  {
        std::cout << "A12 class m1\n";
    }
};

// Function to run a thread and perform reinterpret_cast
void runThread(A* basePtr) {
    // Access the base class virtual function
    basePtr->m1();
}

// Function to create threads and pass objects
void createThread() {
    // Create an object of A12 (diamond problem)
    A12 a12Obj;

    // Upcast to A* and pass to runThread
    A* basePtr = &a12Obj;

    // Call runThread for the A12 object
    t1 = thread(runThread, basePtr);
}

int main() {
    // Create threads
    createThread();
    t1.join();

    return 0;
}
