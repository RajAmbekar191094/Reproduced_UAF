/* Description: Object x is static and created on stack (local var) and then passed as value to thread function thread_func. Since the object is declared static 
   it is stored in Data memory and never goes out of scope. Hence there is no Use After Scope */

#include <iostream>
#include <pthread.h>

pthread_t t1,t2;

void* thread_func(void *arg) {
    int *x = static_cast<int*>(arg);
    std::cout << "Value of x is:" << *x << "\n";
    return nullptr;
}

void threadFunction() {
    static int x = 10;
    static int y=20;
    pthread_create(&t1, nullptr, thread_func, static_cast<void*>(&x));
    pthread_create(&t2, nullptr, thread_func, static_cast<void*>(&x));
}

int main() {
    threadFunction();
    pthread_join(t1, nullptr);
    pthread_join(t2, nullptr);
}
