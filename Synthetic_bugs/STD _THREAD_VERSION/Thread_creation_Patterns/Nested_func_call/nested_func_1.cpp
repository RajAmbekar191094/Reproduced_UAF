/*Description: In this program a function call chain is created like main->a()->b()->c()->runthrad.
A data object x is passed as refernce from one function to another. In function c local variable is passed 
to final function in the chain runthrad where it is Used. It is enough to extend the lifetime of func c 
to avoid Use After Scope*/

#include <iostream>
#include <thread>
using namespace std;

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
        thread t1(runThread,z);
        t1.join();

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

void a(int *x)
{
    *x=20;
    b(x);

}

int main()
{
    int x=10;
    a(&x);

}