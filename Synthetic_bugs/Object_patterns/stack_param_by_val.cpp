/*Description: Object x is created on stack (local var) and then passed as value to thread function thread_func*/
#include <iostream>
#include <thread>

void thread_func(int x){
    std::cout<<"Value of x is:"<<x<<"\n";

}
void threadFunction(){
    int x=10;
    std::thread t1(thread_func,x);

}
int main(){
    threadFunction();

}