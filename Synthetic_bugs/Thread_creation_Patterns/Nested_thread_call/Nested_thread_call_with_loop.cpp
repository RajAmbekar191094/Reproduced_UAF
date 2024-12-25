#include <iostream>
#include <thread>
#include <vector>

// Function for level 5 thread
void taskLevel5(int* ref) {
    *ref += 50;  // Modify the variable by reference
    std::cout << "Level 5 thread is running. Modified value: " << *ref << "\n";
}

// Function for level 4 thread
void taskLevel4(int* ref) {
    std::cout << "Level 4 thread is running.\n";
    std::thread t5(taskLevel5, ref);  // Pass reference to level 5
    t5.join();  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Current value: " << *ref << "\n";
}

// Helper function for threads in taskLevel3
void level3ThreadTask(int id, int* ref) {
    *ref += id;  // Modify the shared variable based on thread ID
    std::cout << "Thread in Level 3 running. ID: " << id << ", Value: " << *ref << "\n";
}

// Function for level 3 thread
void taskLevel3() {
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 3 thread is running.\n";

    std::vector<std::thread> threads; // Vector to store threads
    for (int i = 10; i < 20; ++i) {
        if (i == 15) {
            threads.emplace_back(taskLevel4, &localVar);  // Pass reference to level 4
        } else {
            threads.emplace_back(level3ThreadTask, i, &localVar);  // Pass ID and reference to shared data
        }
    }

    // Join all threads in the loop
    // for (auto& t : threads) {
    //     t.join();
    // }

    std::cout << "Level 3 thread finished after all inner threads. Final value: " << localVar << "\n";
}

// Function for level 2 thread
void taskLevel2() {
    std::cout << "Level 2 thread is running.\n";
    std::thread t3(taskLevel3);  // Create Level 3 thread
    t3.join();  // Wait for Level 3 to finish
    std::cout << "Level 2 thread finished after level 3.\n";
}

// Function for level 1 thread
void taskLevel1() {
    std::cout << "Level 1 thread is running.\n";
    std::thread t2(taskLevel2);  // Create Level 2 thread
    t2.join();  // Wait for Level 2 to finish
    std::cout << "Level 1 thread finished.\n";
}

// Main function
int main() {
    std::cout << "Main thread is running.\n";

    std::thread t1(taskLevel1);  // Create Level 1 thread
    t1.join();  // Wait for Level 1 to finish

    std::cout << "Main thread finished after level 1.\n";
    return 0;
}
