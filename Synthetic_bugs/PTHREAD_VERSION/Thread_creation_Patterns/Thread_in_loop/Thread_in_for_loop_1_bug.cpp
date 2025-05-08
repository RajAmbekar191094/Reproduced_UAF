/* Description: Threads are created inside a for loop and parameter passed as reference. The threads are joined inside another loop in main() function instead
of the same runLoopThreads giving rise to potential Use After Scope bugs */

#include <iostream>
#include <pthread.h>
#include <vector>
#include <unistd.h>

// Function to be executed by each thread
std::vector<pthread_t> threads;  // Vector to hold thread IDs

void* threadTask(void* args) {
    sleep(2);
    auto* data = static_cast<std::pair<int*, int>*>(args);
    int* ref = data->first;
    int id = data->second;

    // *ref += id;  // Dereference the pointer to modify the shared variable
    std::cout << "Thread " << id << " is running. Modified value: " << *ref << "\n";

    delete data; // Clean up dynamically allocated memory
    return nullptr;
}

void runLoopThreads() {
    int sharedVar = 56;  // A variable shared by all threads

    // Create 5 threads in a for loop
    for (int i = 0; i < 5; ++i) {
        pthread_t tid;
        auto* args = new std::pair<int*, int>(&sharedVar, i + 1); // Dynamically allocate arguments
        pthread_create(&tid, nullptr, threadTask, args);  // Pass the address of sharedVar
        threads.push_back(tid);
    }

    std::cout << "runLoopThreads: Final value of sharedVar: " << sharedVar << "\n";
}

int main() {
    runLoopThreads();

    // Wait for all threads to finish
    for (auto& t : threads) {
        pthread_join(t, nullptr);
    }

    return 0;
}
