#include <iostream>
#include <thread>
#include <unistd.h>
using namespace std;
thread t1;
class A
{
    virtual void m1()
    {
        cout<<"A m1";

    }
    void m2()
    {
         cout<<"A m2";

    }
};
class A1:A
{
    void m1()
    {
        cout<<"A1 m1"<<endl;
    }
    

};

class A2:A
{
    void m2()
    {
        cout<<"A2 m2"<<endl;
    }
    

};
void threadFunction(A2 *a2) {
    sleep(5);
    A1* a1=dynamic_cast<A1*>(a2);

    a1->m1();
}  
void createThread()  
{   
    
    A2 a2; 
    // basePtr = &derivedObj;    
    t1=thread(threadFunction,a2);
     //t1.join();
}
int main() {
    createThread();
    t1.join();
    cout << "Main thread finishes.\n";
    return 0;
}
