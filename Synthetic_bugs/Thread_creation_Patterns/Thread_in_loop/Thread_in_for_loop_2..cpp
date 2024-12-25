#include <iostream>
#include <ostream>
#include <thread>
#include <vector>
using namespace std;

void runFunc1(int *x)
{
    cout<<"value of data received :"<<*x<<endl;
}
void runFunc2(int *x)
{
    cout<<"value of data received :";
    runFunc1(x);
}
int main()
{
    int x=10,y=20;
    for(int i=0;i<6;i++)
    {
        if(i==2)
        {
            int z=30;
            std::thread t1(runFunc1,&z);

        }
        else
        {
            std::vector<std::thread> threads;  // Vector to hold threads

            int p=80;
            threads.emplace_back(runFunc2,&p,i+1);


        }
    }
    return 0;
}