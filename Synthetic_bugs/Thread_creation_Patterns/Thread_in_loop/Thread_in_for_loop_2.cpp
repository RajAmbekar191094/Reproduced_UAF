#include <iostream>
#include <ostream>
#include <thread>
#include <vector>
using namespace std;

void runFunc1(int x)
{
    cout<<"value of data received when pass by val :"<<x<<endl;
}
void runFunc2(int *x)
{
    cout<<"value of data received when pass by ref:"<<*x<<endl;
   
}
int main()
{
    int x=10,y=20;
      std::vector<std::thread> threads;  // Vector to hold threads

    for(int i=0;i<6;i++)
    {
        if(i>=0 && i<=2)
        {
             int z=30;
           
            threads.emplace_back(runFunc1,z);
            threads.back().join();

        }
        else
        {
             int z=30;
        
            threads.emplace_back(runFunc2,&z);
            threads.back().join();


        }
    }
    return 0;
}