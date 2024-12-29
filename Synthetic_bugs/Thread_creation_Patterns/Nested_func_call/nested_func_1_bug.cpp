/*Description: In this program a function call chain is created like main->a()->b()->c()->runthread.
A data object x is passed as refernce from one function to another starting from function a(). 
In function c local variable is passed to final function in the chain runthrad where it is Used. 
Thread t1 is joined in main function instead of c that results in  Use After Scope*/

#include <iostream>
#include <thread>
using namespace std;
 thread t1;
void runThread(int *t)
{
    cout<<"Value passed from main:"<<*t<<endl;

}

void c(int *z)
{
    int r=1;
    if(r==10)
    {

    }
    else{
        t1=thread (runThread,z);
        // t1.join();

    }
    
}

void b(int *y)
{
    int f=20;
    if(f==20)
    {
         *y=30;

    }
   
    c(y);
}

void a()
{
    int x=10;
   
    b(&x);

}

int main()
{
    // int x=10;
    a();
    t1.join();

}