/*Description: Thread handle is initialized globally. Thread is created in  function start thread 
running thread function where local value is passed by reference. This is not a buggy program as the thread is
joined in stratThread function itself where it is created
In RTOS-based embedded systems for automotive or aerospace applications, global thread handles are typically used to manage periodic tasks 
that control system operations like sensor data polling or signal processing. However, thread lifetimes and synchronization must be 
carefully managed using mutexes, semaphores, or condition variables to avoid race conditions and ensure safe access to shared resources.*/

#include <iostream>
#include <thread>

// Global thread handle
std::thread t;

// Function to be executed by the thread
void threadFunction(int *counter) {
    ++(*counter);  // Increment the counter
    std::cout << "Thread is running (global handle), counter = " << *counter << "\n";
}

// Function where the thread is created
void startThread() {
    int counter = 0;
    t = std::thread(threadFunction, &counter);  // Pass counter by pointer
     if (t.joinable()) {
        t.join();  // Ensure the thread is joined before main continues
    }
}

int main() {
    
    startThread();
   
    std::cout << "Main function ends "<<"\n";  
    return 0;
}