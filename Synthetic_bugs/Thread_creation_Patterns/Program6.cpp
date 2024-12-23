/*Description: Threads are created inside a for loop and paarmeterb passed as reference*/
#include <iostream>
#include <thread>
#include <vector>

// Function to be executed by each thread
void threadTask(int* ref, int id) {
    *ref += id;  // Dereference the pointer to modify the shared variable
    std::cout << "Thread " << id << " is running. Modified value: " << *ref << "\n";
}

int main() {
    int sharedVar = 0;  // A variable shared by all threads

    std::vector<std::thread> threads;  // Vector to hold threads

    // Create 5 threads in a for loop
    for (int i = 0; i < 5; ++i) {
        threads.emplace_back(threadTask, &sharedVar, i + 1);  // Pass the address of sharedVar
    }

    // Wait for all threads to finish
    for (auto& t : threads) {
        t.join();
    }

    std::cout << "Main thread: Final value of sharedVar: " << sharedVar << "\n";

    return 0;
}
