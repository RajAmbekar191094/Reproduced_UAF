#include <iostream>
#include <thread>
#include <unistd.h>

void threadFunction(int *refVar) {
    // Simulate some delay
    // std::this_thread::sleep_for(std::chrono::milliseconds(100));
    
    // Access the variable after it might have gone out of scope
    std::cout << "Thread accessing variable: " << *refVar << std::endl;
}

void runProgram() {
    // Declare a stack-allocated variable
      static int  localVar = 42;
    std::cout << "Main thread starts, localVar = " << localVar << std::endl;

    // Create a thread and pass the variable by reference
    std::thread t(threadFunction,&localVar);

    // Let the main thread finish, causing localVar to go out of scope
//    std::this_thread::sleep_for(std::chrono::milliseconds(100));
    // std::cout << "Main thread ends, localVar goes out of scope" << std::endl;

    //  t.join();  // Wait for the thread to complete
    sleep(5);

    
}

int main()
{
    runProgram();
    // std::chrono::milliseconds(100);
    return 0;
}