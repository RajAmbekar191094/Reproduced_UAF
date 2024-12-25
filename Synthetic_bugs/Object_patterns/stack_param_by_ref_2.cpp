/*Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func*/
#include <iostream>
#include <thread>

std::thread t1;
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";
    // std::cout<<"Value of x is:";

}
// void threadFunction(){
//     int x=10;
//     t1=std::thread(thread_func,&x);
    

// }
int main(){
    int a=10;
    if(a==10)
    {
        int x=10;
        t1=std::thread(thread_func,&x);

    }
    
    // threadFunction();
    t1.join();

}