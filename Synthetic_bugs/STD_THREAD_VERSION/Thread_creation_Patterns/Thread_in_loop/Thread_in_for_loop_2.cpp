/*Description: Threads are created in for loop in runThreads() function passing data object z as reference and joined immediately in same scope block avoiding
potential Use After Scope bugs.In image processing applications, such as those used in medical imaging (e.g., MRI or CT scan analysis), 
video streaming, or computer vision systems, large images or frames are divided into smaller blocks to be processed 
by multiple threads in parallel. Each thread processes a part of the image, performs necessary computations, and updates the result.*/
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