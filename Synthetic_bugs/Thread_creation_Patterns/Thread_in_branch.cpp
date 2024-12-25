/* Description: Thread creation inside a one of the branches of if loop*/
#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>


void func2(int *yy)
{
     *yy = *yy +1;
     std::cout<<"the value of y is "<<*yy<<"  \n";

}

bool signal()
{
    return false;
}

void func(int *current)
{
    std::thread t1;
    if(signal())
    {
     *current = *current +1;
     std::cout<<"the value of current is "<<*current<<"  \n";
     t1 = std::thread(func, current);
    }
    else{

    int newval=30;
    
    t1 = std::thread(func2, &newval);
     std::this_thread::sleep_for(std::chrono::milliseconds(3));
    }
t1.join();

}

int main()
{
    
int  x =1;
std::thread t1;

t1 = std::thread(func, &x);

t1.join();
return 0;

}