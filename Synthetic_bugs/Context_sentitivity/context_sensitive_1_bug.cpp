/* Description: Two threads are spawned t1 and t2 in spawnThraeds function depending on value of x.
One thread is joined in if block preventing Use Afetr Scope bug whereas the other thread is joined inside
the main function leading to potential Use After Scope*/

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
        // t2.join();
    }

}
int main()
{
    
    spawnThreads();
    // if(t1.joinable())
    //     t1.join();
    // else
    //     t2.join();
    t2.join();
    return 0;
}