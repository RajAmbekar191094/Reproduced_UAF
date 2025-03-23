/*Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func
In real world systems such patterns can be found in applications where thread data needs to be shared between different
processes. For example in Automotive ECUs monitoring local sensor values (e.g engine temperature or fuel levels) passed to 
different thread functions for short term analysis. Similarly in air borne systems navigation data is being used by different 
other modules like autopilot, guidance, telemetry, display unit etc*/
#include <iostream>
#include <thread>
#include<bits/stdc++.h>
#include<unistd.h>
using namespace std;
std::thread t1;
void thread_func(int *y){
    sleep(10);
    //   cout<<"Mem loc:"<<y<<endl;
    std::cout<<"Value of y is:"<<*y<<"\n";
  

}

int main(){
     int a;
     std::cin>>a;
    
     if(a==10)
    {
        int x=10;
        // cout<<"Mem loc:"<<&x<<endl;
        t1=std::thread(thread_func,&x);

    }
    std::cout<<"Scope over"<<std::endl;
    
    t1.join();

}