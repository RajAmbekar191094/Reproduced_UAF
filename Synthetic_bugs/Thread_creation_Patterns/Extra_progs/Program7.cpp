#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>


// the function func2 is not thread safe and UAS is caused by order violations.
int *yy;

void func2()
{
    int y=0;
    yy =&y;
     *yy = *yy +1;
     std::cout<<"the value of y is "<<*yy<<" \n";
}

bool signal()
{
    return false;
}

void func(int *current)
{
std::vector<std::thread> threads;

for(int i=0; i<5;i++)
{
    threads.push_back(std::thread(func2));
    /* code */    
}

for(auto &t : threads)
{
    if(t.joinable())
    t.join();
}

}

int main()
{
    
int  x =1;
std::thread t1;

t1 = std::thread(func, &x);

t1.join();
return 0;

}