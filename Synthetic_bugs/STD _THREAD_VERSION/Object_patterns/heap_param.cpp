/*Description: Object x is created on heap and then passed as reference to thread function thread_func. Since object is created on  heap using new 
keyword there is no Use After Scope bug
In general the heap allocation is avoided in case of safety critical embedded systems to avoid problems like memory leak.
But in many safety critical systems which are not air borne, it is in general common to find dynamic memory allocation.
This program tries to depict such scenarios, though this will not result in the Use After Scope bug*/


#include <iostream>
#include <thread>
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";

}
void threadFunction(){
    int *x=new int(10);
    std::thread t1(thread_func,x);
    
    // delete(x);

}
int main(){
    threadFunction();
    t1.join();

}