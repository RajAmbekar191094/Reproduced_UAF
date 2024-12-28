/*Description: Object x is created on heap and then passed as reference to thread function thread_func*/


#include <iostream>
#include <thread>
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";

}
void threadFunction(){
    int *x=new int(10);
    std::thread t1(thread_func,x);
    t1.join();
    delete(x);

}
int main(){
    threadFunction();

}