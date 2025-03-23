/*Description: Object x is static and created on stack (local var) and then passed as value to thread function thread_func. Since the object is declared static 
it is stored in Data memory and never goes out of scope. Hence there is no Use AFter Scope
This pattern of passing a static object as a value to a thread function is useful in embedded and safety-critical 
systems where data must persist for the entire application lifetime and ensure thread safety. Here's a real-world example:
In an automotive engine control unit (ECU), faults (e.g., sensor malfunctions or abnormal operating conditions) are monitored continuously. 
A static counter keeps track of the number of faults 
detected across multiple calls to the monitoring function. This ensures the counter persists across function calls and is not reset.*/
#include <iostream>
#include <thread>
std::thread t1;
void thread_func(int *x){
    std::cout<<"Value of x is:"<<*x<<"\n";

}
void threadFunction(){
    static int x=10;
    t1=std::thread(thread_func,&x);

}
int main(){
    threadFunction();
    t1.join();


}