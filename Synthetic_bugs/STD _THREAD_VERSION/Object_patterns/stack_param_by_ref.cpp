/*Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func. Here the thread t1 is joined immediately
after it is spawned inside threadFunction which extends the life of threadFunction and there is no Use After Scope bug*/
#include <iostream>
#include <thread>

std::thread t1;
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";
    // std::cout<<"Value of x is:";

}
void threadFunction(){
    int x=10;
    t1=std::thread(thread_func,&x);
     t1.join();

    

}
int main(){
    //  int x=10;
    // t1=std::thread(thread_func);
    threadFunction();
   
}