/*Description: Object x is static and created on stack (local var) and then passed as value to thread function thread_func*/
#include <iostream>
#include <thread>
std::thread t1;
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";

}
void threadFunction(){
    static int x=10;
    t1=std::thread(thread_func,&x);

}
int main(){
    threadFunction();
    t1.join();

}