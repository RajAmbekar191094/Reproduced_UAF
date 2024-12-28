
#include <iostream>
#include <thread>
using namespace std;
thread t1;

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
         t1=thread(runThread,&r);
       

    }
    
}

void b()
{
   int y=10;
    c();
     t1.join();
}

void a()
{
   
    
    b();

}

int main()
{
    
    a();

}