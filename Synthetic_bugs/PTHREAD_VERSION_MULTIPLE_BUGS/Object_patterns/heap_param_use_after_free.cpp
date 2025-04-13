/* Description: Object x is created on heap and then passed as reference to thread function thread_func. Since object is created on heap using new 
   keyword there is no Use After Scope bug */

#include <iostream>
#include <pthread.h>
pthread_t t1,t2;
void* thread_func(void *arg) {
    int *x = static_cast<int*>(arg);
    std::cout << "Value of x is: " << *x << "\n";
    return nullptr;
}

void threadFunction() {
    int *x = new int(10);
    
    
    
    // Create thread and pass pointer to thread_func
    pthread_create(&t1, nullptr, thread_func, static_cast<void*>(x));
    pthread_create(&t2, nullptr, thread_func, static_cast<void*>(x));
    
    // Wait for the thread to finish
   
    free(x);
    // Clean up
    // delete x;
}

int main() {
    threadFunction();
    pthread_join(t1, nullptr);
    pthread_join(t2, nullptr);
}
