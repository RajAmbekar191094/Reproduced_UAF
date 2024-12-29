/*Desciption: Threads are created inside while loop and joined immediately in same block avoiding potential Use After Scope bugs*/
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