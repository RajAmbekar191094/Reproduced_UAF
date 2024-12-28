
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