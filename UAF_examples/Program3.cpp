#include <iostream>
#include <thread>

// A simple function to simulate some work
void doSomething() {
    std::cout << "Doing some work..." << std::endl;
}

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

// Function that launches a thread to do some work asynchronously (passing by value)
void execute(int &A, B &callback) {
    // Detach a thread to perform some work
    std::thread([&A, &callback]() {
        doSomething();
        std::this_thread::sleep_for(std::chrono::seconds(2));
       
        if (A > 0) {
            callback.notify(true);  // Notify success
        } else {
            callback.notify(false); // Notify failure
        }
    }).detach();
    
}


void runProgram() {
  
  int A = 5;  // Simple variable to pass to the function
    B callback; // Create a simple callback object

    
    execute(A, callback);
    

}

int main() {
    // Call the new function to run the program
    runProgram();
    std::cout<<"Run gone"<<"\n";
   std::this_thread::sleep_for(std::chrono::seconds(3));
    return 0;
}
