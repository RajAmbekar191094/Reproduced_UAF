#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>
void f1(int *run)
{
    std::this_thread::sleep_for(std::chrono::milliseconds(15));
    *run =0;
}


bool is_signal()
{
    return true;
}

void f2(int *y)
{
     *y = *y +1;
     std::cout<<"the value of y is "<<*y<<"  \n";

}

int main()
{
int  running =1;
std::thread thread_1(f1,&running);
std::vector<std::thread> threads;

while(running)
{
  
      int y =0;
       threads.push_back(std::thread(f2,&y));
        /* code */
    
}
thread_1.join();
for(auto &t : threads)
{
    if(t.joinable())
    t.join();
}
return 0;

}