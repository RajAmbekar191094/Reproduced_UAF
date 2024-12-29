//the else branch in the main function has a use after scope issue with variable y.

#include<thread>
#include <atomic>
#include<vector>
#include<iostream>
#include <pthread.h>

bool is_signal()
{
    return false;
}

void func(int *y)
{
     *y = *y +1;
     std::cout<<"the value of y is "<<*y<<"  \n";

}

int main()
{
    
int  x =1;
std::thread t1;

if(is_signal()){
    
    t1 = std::thread(func, &x);
}
else{

    int y =0;
    t1 = std::thread(func, &y); 

}
t1.join();
return 0;

}