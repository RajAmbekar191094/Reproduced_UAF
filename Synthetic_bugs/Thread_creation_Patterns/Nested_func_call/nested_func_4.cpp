
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