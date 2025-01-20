/*Description: In this program a function call chain is created like main->a()->b()->c()->runthread.
A data object x is passed as refernce from one function to another starting from function a(). 
In function c local variable is passed to final function in the chain runthrad where it is Used. 
Thread t1 is joined in main function instead of c that results in  Use After Scope
In an autonomous vehicle system, a situation can arise where a sensor data (e.g., LiDAR or camera readings) must propagate through a 
pipeline of processing functions, each adding or refining data before the final stage spawns a thread to process the enriched data.*/
#include <iostream>
#include <thread>
using namespace std;
thread t1;
void runThread(int *t)
{
    cout<<"Value passed from func a:"<<*t<<endl;

}

void c(int *z)
{
    int r=1;
    if(r==10)
    {

    }
    else{
         t1=thread(runThread,z);
        // t1.join();

    }
    
}

void b(int *y)
{
    *y=30;
    c(y);
}

void a()
{
    int x=10;
    
    b(&x);

}

int main()
{
    
    a();
    t1.join();

}