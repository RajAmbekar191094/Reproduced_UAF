/* Description: A single object is passed as reference from one thread to another at multiple levels . 
A loal object is declared in taskLevel0 which is apssed 
all the way to taskLevel5 where it is finally used. Joining the thread at main() insterad of threadLevel0 who is the owner of the object leads to Use After Scope 
bug.
In a safety-critical industrial control system, a multi-level fault detection system may process sensor data through various stages.
Each stage involves different tasks (e.g., monitoring, validation, filtering, and analysis) and is handled by a separate thread. 
The system can be hierarchical, where each thread in the chain is  responsible for a specific task. 
At the final stage, a decision is made based on the data, and an alarm or safety protocol is triggered.*/

#include <iostream>
#include <thread>
#include <functional> // for std::ref

// Function for level 5 thread
std::thread t1; int localVar = 100;  // Local variable to be passed by reference

void taskLevel5(int *ref) {
    *ref += 50;  // Modify the variable by reference
    std::cout << "Level 5 thread is running. Modified value: " << ref << "\n";
}

// Function for level 4 thread
void taskLevel4(int *ref) {
    std::cout << "Level 4 thread is running.\n";
    std::thread t5(taskLevel5, ref);  // Pass reference to level 5
    t5.join();  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Current value: " << ref << "\n";
}

// Function for level 3 thread
void taskLevel3(int * ref) {
    std::cout << "Level 3 thread is running.\n";
    std::thread t4(taskLevel4, ref);  // Pass reference to level 4
    t4.join();  // Wait for level 4 to finish
    std::cout << "Level 3 thread finished after level 4. Current value: " << ref << "\n";
}

// Function for level 2 thread
void taskLevel2(int *ref) {
    std::cout << "Level 2 thread is running.\n";
    std::thread t3(taskLevel3, ref);  // Pass reference to level 3
    t3.join();  
    std::cout << "Level 2 thread finished after level 3. Current value: " << ref << "\n";
}

// Function for level 1 thread
void taskLevel1(int *ref) {
    std::cout << "Level 1 thread is running.\n";
    std::thread t2(taskLevel2, ref);  // Pass reference to level 2
    t2.join();  
    std::cout << "Level 1 thread finished after level 2. Current value: " << ref << "\n";
}

// Main function
void taskLevel0()
{
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 0 is running. Initial value: " << localVar << "\n";
    
   
    t1=std::thread(taskLevel1, &localVar);
   
    
    std::cout << "Level 0 is running. Final value: " << localVar << "\n";
    // return 0;

}
int main() {
    taskLevel0();
    t1.join();  
    return 0;
}
