/*Description: Object x is created on stack (local var) and then passed as value to thread function thread_func. Since parameter is passed by value there is 
no Use After Scope bug
In an autonomous vehicle, sensor data from LIDAR, cameras, or radar must be processed concurrently to make driving decisions. 
To ensure thread safety and avoid data races, data snapshots are often passed by value to worker threads for independent processing.*/
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