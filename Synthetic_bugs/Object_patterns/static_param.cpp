/*Description: Object x is static and created on stack (local var) and then passed as value to thread function thread_func*/
#include <iostream>
#include <thread>
void thread_func(int *x){
    cout<<"Value of x is:"<<*x<<"\n";

}
void threadFunction(){
    static int x=10;
    std::thread t1(thread_func,&x);

}
int main(){
    threadFunction();

}