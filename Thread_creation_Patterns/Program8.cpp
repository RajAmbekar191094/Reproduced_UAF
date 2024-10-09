/*Description: */
#include <iostream>
#include <thread>
#include <functional>  // for std::ref

// Function that will be executed by the thread
void threadTask(int& ref) {
    ref += 10;  // Modify the value by reference
    std::cout << "Thread: modified value is " << ref << "\n";
}

// Function that creates a thread and passes a reference to it
void createThread(int& sharedVar) {
    std::cout << "Creating thread...\n";
    // Pass the reference to the thread using std::ref
    std::thread t(threadTask, std::ref(sharedVar));  // Use std::ref to pass by reference
    t.join();  // Wait for the thread to finish
    std::cout << "Thread has finished. Final value: " << sharedVar << "\n";
}

int main() {
    int myVar = 20;  // A variable to be passed by reference
    std::cout << "Main: initial value of myVar: " << myVar << "\n";
    
    // Call the function that creates a thread and passes the reference
    createThread(myVar);
    
    std::cout << "Main: after thread, myVar is: " << myVar << "\n";

    return 0;
}
