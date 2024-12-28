
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