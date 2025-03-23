/*Passing thread handle as parameter to join the thread. Here joinThread function is called in main() function itself which is the owner of the object passed as
reference avoiding the potential Use After Scope bugs*/
#include <iostream>
#include <thread>

// Function that will be executed by the thread
void threadTask(int id) {
    std::cout << "Thread " << id << " is running...\n";
    std::this_thread::sleep_for(std::chrono::seconds(2));
    std::cout << "Thread " << id << " has finished.\n";
}

// Function that takes a thread handle and joins the thread
void joinThread(std::thread& t) {
    if (t.joinable()) {
        std::cout << "Joining thread...\n";
        t.join();  // Join the thread to ensure it finishes
        std::cout << "Thread joined successfully.\n";
    }
}


int main() {
    std::thread t1(threadTask, 1);  // Create a thread that runs threadTask

    // Pass the thread handle (t1) to another function to join it
    joinThread(t1);  // Passing the thread handle as a reference

    return 0;
}
