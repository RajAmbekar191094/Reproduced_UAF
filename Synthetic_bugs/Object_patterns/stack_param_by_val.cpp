/*Description: Object x is created on stack (local var) and then passed as value to thread function thread_func. Since parameter is passed by value there is 
no Use After Scope bug*/
#include <iostream>
#include <thread>
std::thread t1;
void thread_func(int x){
    std::cout<<"Value of x is:"<<x<<"\n";

}
void threadFunction(){
    int x=10;
    t1=std::thread(thread_func,x);
    //  t1.join();

}
int main(){
    threadFunction();
    t1.join();

}