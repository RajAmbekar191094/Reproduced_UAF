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
//  A* basePtrA2;
// Function to run threads and check the behavior
void runThread1(A* basePtr) {
   // Downcasting to A1
    sleep(5);
   basePtr->m1();




 }
void runThread2(A* basePtr) {
   // Downcasting to A2
   // A1* a1Ptr = dynamic_cast<A1*>(basePtr);
    basePtr->m2();


   // Check and call the appropriate methods
   // if (a2Ptr) {
   //     std::cout << "Downcasting to A2 successful\n";
   //     a1Ptr->m1(); // Calls A1's m1
   // } else {
   //     std::cout << "Failed to downcast to A1\n";
   // }


 }


// Function to create threads and pass objects
void createThread() {
   // Create objects of A1 and A2
//     A1 a1Obj;
//     A2 a2Obj;


//     // Upcast to A* and pass to runThread
//    basePtrA1 = &a1Obj;
//     basePtrA2 = &a2Obj;


//     // Call runThread for both A1 and A2 objects
//     t1=thread(runThread1,basePtrA1);  // Passes A1 object as base class pointer
//     t1.join();
//     t2=thread(runThread2,basePtrA2);  // Passes A2 object as base class pointer
//      t2.join();


     A2 a2Obj;
     basePtr = &a2Obj;
      t2=thread(runThread2,basePtr);
      t2.join();
  
        A1 a1Obj;
        basePtr = &a1Obj;
        t1=thread(runThread1,basePtr);
        t1.join();
        





  
}




int main() {
   // Create threads (simulating with direct function calls)
  
   createThread();
    // t2.join();
 


   return 0;
}


	
