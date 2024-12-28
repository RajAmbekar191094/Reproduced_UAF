/*Description: The function UseOfdata is called at 2 different locations in spawnthread function. Here the join 
is placed immediately after the thread so there is no Use After Scope error*/

#include <iostream>
#include <thread>
using namespace std;
thread t1,t2;
void UseOfData(int *x)
{
    cout<<"Data sent:"<<*x<<endl;
}

void spawnThreads()
{
    int x;
    cin>>x;
    if(x==10)
    {
        t1=thread(UseOfData,&x);
        t1.join();

    }
    else
    {
        x=100;
        t2=thread(UseOfData,&x);
        t2.join();
    }

}
int main()
{
    
    spawnThreads();
    return 0;
}