/*Description: In this program a function call chain is created like main->a()->b()->c()->runthrad.
A data object x is passed as refernce from one function to another. In function c local variable is passed 
to final function in the chain runthrad where it is Used. It is enough to extend the lifetime of func c 
to avoid Use After Scope
In an autonomous vehicle system, a situation can arise where a sensor data (e.g., LiDAR or camera readings) must propagate through a 
pipeline of processing functions, each adding or refining data before the final stage spawns a thread to process the enriched data.*/
#include <iostream>
#include <thread>
using namespace std;

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
        thread t1(runThread,z);
        t1.join();

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

}

int main()
{
    
    a();

}