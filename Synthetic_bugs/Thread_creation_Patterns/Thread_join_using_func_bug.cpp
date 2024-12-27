/*Passing thread handle as parameter to join the thread*/
#include <iostream>
#include <thread>

// Function that will be executed by the thread
std::thread t1;
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

void createThread()
{
     t1=std::thread(threadTask, 1);  // Create a thread that runs threadTask

    
}


int main() {
    // std::thread t1(threadTask, 1);  // Create a thread that runs threadTask

    // Pass the thread handle (t1) to another function to join it
    joinThread(t1);  // Passing the thread handle as a reference

    return 0;
}
