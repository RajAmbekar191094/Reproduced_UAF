/*Description: A function createThread is called in main with sharedVar passed as ref
which internally creates thread to run threadTask function*/
#include <iostream>
#include <thread>
#include <functional>  // for std::ref


void threadTask(int& ref) {
    ref += 10;  
    std::cout << "Thread: modified value is " << ref << "\n";
}

// Function that creates a thread and passes a reference to it
void createThread(int& sharedVar) {
    std::cout << "Creating thread...\n";
    
    std::thread t(threadTask, std::ref(sharedVar)); 
    t.join();  
    std::cout << "Thread has finished. Final value: " << sharedVar << "\n";
}

int main() {
    int myVar = 20;  
    std::cout << "Main: initial value of myVar: " << myVar << "\n";
    
    
    createThread(myVar);
    
    std::cout << "Main: after thread, myVar is: " << myVar << "\n";

    return 0;
}
