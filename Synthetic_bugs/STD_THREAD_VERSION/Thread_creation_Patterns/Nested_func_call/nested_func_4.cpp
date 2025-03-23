/*Description: In this program a function call chain is created like main->a()->b()->c()->runthread.
A data object x is passed as refernce from one function to another starting from function c(). 
In function c local variable is passed to final function in the chain runthrad where it is Used. 
Thread t1 is joined in c() function preventing  Use After Scope
In an autonomous vehicle system, a situation can arise where a sensor data (e.g., LiDAR or camera readings) must propagate through a 
pipeline of processing functions, each adding or refining data before the final stage spawns a thread to process the enriched data.*/
#include <iostream>
#include <thread>
using namespace std;

void runThread(int *t)
{
    cout<<"Value passed from func b:"<<*t<<endl;

}

void c()
{
    int r=1;
    if(r==10)
    {

    }
    else{
        thread t1(runThread,&r);
        t1.join();

    }
    
}

void b()
{
   int y=10;
    c();
}

void a()
{
   
    
    b();

}

int main()
{
    
    a();

}