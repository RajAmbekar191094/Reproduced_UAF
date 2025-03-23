/*Desciption: Threads are created inside while loop and joined immediately in same block avoiding potential Use After Scope bugs
In image processing applications, such as those used in medical imaging (e.g., MRI or CT scan analysis), 
video streaming, or computer vision systems, large images or frames are divided into smaller blocks to be processed 
by multiple threads in parallel. Each thread processes a part of the image, performs necessary computations, and updates the result.*/
#include <iostream>
#include <thread>
#include <vector>
using namespace std;
void func1(int *y,int id)
{
    *y=*y+1;
    cout<<"Incremented data by id "<<id<<"and with val "<<*y<<endl;
}
int main()
{
    vector<thread>v;
    int i=0;
    while(i<=5)
    {
        i++;
        int j=10;
        if(i==3)
        {
            v.emplace_back(thread(func1,&i,i+1));
            v.back().join();

        }
        else 
        {
              v.emplace_back(thread(func1,&j,i+1));
               v.back().join();

        }
       
    }

    return 0;

}