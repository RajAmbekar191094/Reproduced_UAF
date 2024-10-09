
/* Description: Thread creation inside a function*/

#include <iostream>
#include <thread>
#include <functional> // for std::ref

// Function to be executed by the thread that takes an integer reference
void task(int *ref) {
    *ref += 10;
    std::cout << "Task running in thread, modified value: " << *ref << "\n";
}

// Function that creates a thread and passes a local variable by reference
void createThread() {
    int localVar = 5;
    
    std::cout << "Before thread, localVar: " << localVar << "\n";
    
    // Create a thread and pass localVar by reference using std::ref
    std::thread t(task, &localVar);  
    
    t.join();  // Wait for the thread to finish
    
    std::cout << "After thread, localVar: " << localVar << "\n";
}

int main() {
    createThread();  // Call the function that creates a thread
    return 0;
}
