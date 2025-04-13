/* Description: Thread handle is passed by reference to a function startThread which uses the same handle
to create thread running threadFunction */

#include <iostream>
#include <pthread.h>
#include<unistd.h>
void* threadFunction(void* arg) {
    int counter = *static_cast<int*>(arg);  // Convert void pointer to int pointer
    std::cout << "Thread is running (handle passed by reference), counter = " << counter << "\n";
    return nullptr;
}

void runThread(pthread_t *t1,pthread_t *t2, int counter) {
    sleep(2);
    pthread_create(t1, nullptr, threadFunction, &counter);  // Create a new thread
    pthread_create(t2, nullptr, threadFunction, &counter);  // Create a new thread
}

int startThread() {
    pthread_t t1,t2;  // Thread handle
    int counter = 5;
    runThread(&t1, &t2,counter);  // Pass thread handle by reference
    // pthread_join(t, nullptr);  // Wait for the thread to finish
    std::cout << "Main function ends\n";
    return 0;
}

int main() {
    startThread();
    return 0;
}
