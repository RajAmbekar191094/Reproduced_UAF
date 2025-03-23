/*Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func. Here the thread t1 is joined in main function instead of 
threadFunction which leads to Use After Scope bug for data object x
In real world systems such patterns can be found in applications where thread data needs to be shared between different
processes. For example in Automotive ECUs monitoring local sensor values (e.g engine temperature or fuel levels) passed to 
different thread functions for short term analysis.Similarly in air borne systems navigation data is being used by different 
other modules like autopilot, guidance, telemetry, display unit etc*/
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
    

}
int main(){
    //  int x=10;
    // t1=std::thread(thread_func);
    threadFunction();
    t1.join();

}