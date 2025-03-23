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
    sleep(10);
   basePtr->m1();




 }
void runThread2(A* basePtr) {

    basePtr->m2();


 }


// Function to create threads and pass objects
void createThread() {

int x=9;
{
     A2 a2Obj;
     basePtr = &a2Obj;
      t2=thread(runThread2,basePtr);
   //    t2.join();
   if(x==9)
   {
         A1 a1Obj;
         basePtr = &a1Obj;
         t1=thread(runThread1,basePtr);
        


   }
   cout<<"Inner scope ends"<<endl;


  
}
t1.join();
}
   


int main() {
   // Create threads (simulating with direct function calls)
  
   createThread();
    t2.join();
 


   return 0;
}


	
