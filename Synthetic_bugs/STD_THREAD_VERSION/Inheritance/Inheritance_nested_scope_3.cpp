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
 A* basePtr;


// Function to run threads and check the behavior
void runThread1(A* basePtr) {
    
     basePtr->m1(); // Downcast
  

  
}
void runThread2(A* basePtr) {
    
     basePtr->m2(); 


  
}

// Function to create threads and pass objects
void createThread() {

        A2 a2Obj;
        basePtr=&a2Obj;
        t1=thread(runThread1,basePtr);  
        t1.join();


        A1 a1obj;
        basePtr=&a1obj;
        t2=thread(runThread2,basePtr);
        t2.join();



}
     

int main() {
    // Create threads (simulating with direct function calls)
    
    createThread();
    // t1.join();
    //  t2.join();
   

    return 0;
}
