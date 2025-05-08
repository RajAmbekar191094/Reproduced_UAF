/* Description: Thread handle is passed by value to a function startThread which uses the same handle
to create thread running threadFunction */

#include <iostream>
#include <pthread.h>
#include<unistd.h>

void* threadFunction(void* arg) {
    sleep(5);
    int counter = *static_cast<int*>(arg);  // Convert void pointer to int pointer
    std::cout << "Thread is running (handle passed by value), counter = " << counter << "\n";
    return nullptr;
}

void startThread(pthread_t t1,pthread_t t2, int counter) {
    pthread_create(&t1, nullptr, threadFunction, &counter);  // Create a new thread
    pthread_create(&t2, nullptr, threadFunction, &counter);  // Create a new thread
    // pthread_join(t, nullptr);  // Wait for the thread to finish
}

int main() {
    pthread_t t1,t2;  // Thread handle
    int counter = 10;
    startThread(t1,t2, counter);  // Pass thread handle by value
    std::cout << "Main function ends\n";
    return 0;
}
