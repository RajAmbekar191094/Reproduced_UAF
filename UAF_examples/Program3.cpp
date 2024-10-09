/*Desciption: In  this program varaible A and callback are local (stack) variables to function runProgram()
They are passed as a reference to execute function where they are captured as a reference in a lambda function
thread which can use Use after Scope bug. To resolve this issue pass them as value instead of reference*/

#include <iostream>
#include <thread>
#include<unistd.h>

// A simple function to simulate some work
// void doSomething() {
//     std::cout << "Doing some work..." << std::endl;
// }

// A simple callback class
class B {
public:
    // Mark notify as const, since it doesn't modify the object
    void notify(bool success) const {
        if (success) {
            std::cout << "Work done successfully!" << std::endl;
        } else {
            std::cout << "Work failed!" << std::endl;
        }
    }
};
std::thread t1;

// Function that launches a thread to do some work asynchronously (passing by value)
// void execute(int *A, B *callback) {
//     // Detach a thread to perform some work
//     // std::thread t1;
//     t1=std::thread([&A, &callback]() {
//         std::cout << "Doing some work..." << std::endl;
//         // std::this_thread::sleep_for(std::chrono::seconds(2));
       
//         if (*A > 0) {
//             callback->notify(true);  // Notify success
//         } else {
//             callback->notify(false); // Notify failure
//         }
//     }); 
    
    
// }

void execute(int A, B callback) {
    // Detach a thread to perform some work
    // std::thread t1;
    t1=std::thread([A, callback]() {
        std::cout << "Doing some work..." << std::endl;
        // std::this_thread::sleep_for(std::chrono::seconds(2));
       
        if (A > 0) {
            callback.notify(true);  // Notify success
        } else {
            callback.notify(false); // Notify failure
        }
    }); 
    
    
}


void runProgram() {
  
  int A = 5;  // Simple variable to pass to the function
    B callback; // Create a simple callback object

    
//    execute(&A, &callback);
    execute(A, callback);

    // sleep(5);
    

}

int main() {
    // Call the new function to run the program
    // std::thread t1;
    runProgram();
    std::cout<<"Run gone"<<"\n";
    // std::this_thread::sleep_for(std::chrono::seconds(5));
    t1.join();
    return 0;
}
