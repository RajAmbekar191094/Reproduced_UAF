/*Description: Threads are created in for loop in runThreads() function passing data object z as reference and joined in main() function giving rise 
to Use After Scope bugs. In image processing applications, such as those used in medical imaging (e.g., MRI or CT scan analysis), 
video streaming, or computer vision systems, large images or frames are divided into smaller blocks to be processed 
by multiple threads in parallel. Each thread processes a part of the image, performs necessary computations, and updates the result.*/
#include <iostream>
#include <ostream>
#include <thread>
#include <vector>
using namespace std;
std::vector<std::thread> threads;  // Vector to hold threads

void runFunc1(int x)
{
    cout<<"value of data received when pass by val :"<<x<<endl;
}
void runFunc2(int *x)
{
    cout<<"value of data received when pass by ref:"<<*x<<endl;
    //  delete x;  // Clean up dynamically allocated memory
   
}
void runThreads()
{
    int x=10,y=20;
    //   std::vector<std::thread> threads;  // Vector to hold threads

    for(int i=0;i<6;i++)
    {
        if(i>=0 && i<=2)
        {
             int z=30;
           
            threads.emplace_back(runFunc1,z);
            // threads.back().join();

        }
        else
        {
             int z=30;
        
            threads.emplace_back(runFunc2,&z);
            // threads.back().join();


        }
    }

}
int main()
{
    runThreads();
      for (auto &thread : threads)
    {
        thread.join(); // Join all threads
    }

    
    return 0;
}