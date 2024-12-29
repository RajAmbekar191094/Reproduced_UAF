/*Description: In this program a function call chain is created like main->a()->b()->c()->runthread.
A data object x is passed as refernce from one function to another starting from function b(). 
In function c local variable is passed to final function in the chain runthrad where it is Used. 
Thread t1 is joined in a() function instead of c that results in  Use After Scope*/
#include <iostream>
#include <thread>
using namespace std;
thread t1;

void runThread(int *t)
{
    cout<<"Value passed from func b:"<<*t<<endl;

}

void c(int *z)
{
    int r=1;
    if(r==10)
    {

    }
    else{
         t1=thread(runThread,z);
       

    }
    
}

void b()
{
   int y=10;
    c(&y);
   
}

void a()
{
   
    
    b();
    t1.join();

}

int main()
{
    
    a();

}