/*Description: Object x is created on stack (local var) and then passed as reference to thread function thread_func*/
#include <iostream>
#include <thread>
#include<bits/stdc++.h>

std::thread t1;
void thread_func(int *x){
    sleep(2);
    std::cout<<"Value of x is:"<<*x<<"\n";
    // std::cout<<"Value of x is:";

}
// void threadFunction(){
//     int x=10;
//     t1=std::thread(thread_func,&x);
    

// }
int main(){
     int a;
     std::cin>>a;
    
     if(a==10)
    {
        int x=10;
        t1=std::thread(thread_func,&x);

    }
    std::cout<<"Scope over"<<std::endl;
    // else{
    //     int y=30;
    //     t1=std::thread(thread_func,&y);
        
    // }
    
    // threadFunction();
    t1.join();

}