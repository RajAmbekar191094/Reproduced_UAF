/*Description: SwapnThreads function is called at two different locations in main function.
Depending on value of x UseOfdata function prints the value of data passed as reference.
In an industrial robotic arm, multiple subsystems (e.g., motor controllers, sensor handlers, and safety monitors) operate concurrently to 
perform precise tasks. A function like spawnThreads can be called multiple times to initiate threads for specific operations depending 
on the system's state or input conditions.*/

#include <iostream>
#include <thread>
using namespace std;
thread t1,t2;
void UseOfData(int *x)
{
    cout<<"Data sent:"<<*x<<endl;
}

void spawnThreads(int *x)
{
    // int x;
    // cin>>x;
    if(*x==10)
    {
        t1=thread(UseOfData,x);
        t1.join();

    }
    else
    {
        *x=100;
        t2=thread(UseOfData,x);
        t2.join();
    }

}
int main()
{
    int x;
    cin>>x;
    spawnThreads(&x);
    for(x=0;x<10;x++);
    spawnThreads(&x);
    return 0;
}