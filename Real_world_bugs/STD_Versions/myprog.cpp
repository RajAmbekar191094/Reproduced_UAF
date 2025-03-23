#include <iostream>
#include <thread>
#include <chrono>

void task() {
    std::this_thread::sleep_for(std::chrono::seconds(1));  // Simulate some work
    std::cout << "Thread task completed.\n";
}

int main() {
    std::thread t1(task);  // Create a thread that runs 'task'

    // Main thread does some work, but it doesn't join or detach the created thread
    std::cout << "Main thread continues execution...\n";

    // Main thread gives enough time for the spawned thread to finish
    std::this_thread::sleep_for(std::chrono::seconds(2));  // Main thread waits for 2 seconds

    // Main thread finishes execution
    std::cout << "Main thread finished.\n";

    // No join or detach required because we gave enough time for the thread to complete.
    return 0;
}
