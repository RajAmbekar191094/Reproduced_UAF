#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;
thread t1,t2;

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

// Function to run threads and check the behavior
void runThread1(A1* a1Obj) {
    
    sleep(5);
    A* basePtr = dynamic_cast<A*>(a1Obj); //upcast
     basePtr->m1(); 
  

  
}
void runThread2(A2* a2Obj) {
    sleep(5);
     A* basePtr = dynamic_cast<A*>(a2Obj); //upcast
     basePtr->m2(); 


  
}

// Function to create threads and pass objects
void createThread() {
    // Create objects of A1 and A2
    A1 a1Obj;
    A2 a2Obj;

    // Upcast to A* and pass to runThread


    // Call runThread for both A1 and A2 objects
    t1=thread(runThread1,&a1Obj);  // Passes A1 object as base class pointer
    t1.join();
    t2=thread(runThread2,&a2Obj);  // Passes A2 object as base class pointer
     t2.join();
}
     

int main() {
    // Create threads (simulating with direct function calls)
    
    createThread();
    //  t1.join();
    //  t2.join();
   

    return 0;
}
