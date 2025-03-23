/* description: A single object is passed as reference from one thread to another at multiple levels. Object localVar is owned by taskLevel2. The thread t3
is joined at taskLevel1 instead of taskLevel2 leading to Use After Scope bug
In a safety-critical industrial control system, a multi-level fault detection system may process sensor data through various stages.
Each stage involves different tasks (e.g., monitoring, validation, filtering, and analysis) and is handled by a separate thread. 
The system can be hierarchical, where each thread in the chain is  responsible for a specific task. 
At the final stage, a decision is made based on the data, and an alarm or safety protocol is triggered.*/

#include <iostream>
#include <thread>
#include <functional> // for std::ref
std::thread t3;
// Function for level 5 thread
void taskLevel5(int *ref) {
    *ref += 50;  // Modify the variable by reference
    std::cout << "Level 5 thread is running. Modified value: " << *ref << "\n";
}

// Function for level 4 thread
void taskLevel4(int *ref) {
    std::cout << "Level 4 thread is running.\n";
    std::thread t5(taskLevel5, ref);  // Pass reference to level 5
    t5.join();  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Current value: " << *ref << "\n";
}

// Function for level 3 thread
void taskLevel3(int * ref) {
    std::cout << "Level 3 thread is running.\n";
    std::thread t4(taskLevel4, ref);  // Pass reference to level 4
    t4.join();  // Wait for level 4 to finish
    std::cout << "Level 3 thread finished after level 4. Current value: " << *ref << "\n";
}

// Function for level 2 thread
void taskLevel2() {
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 2 thread is running.\n";
     t3=std::thread(taskLevel3, &localVar);  // Pass reference to level 3
    // t3.join();  
    std::cout << "Level 2 thread finished after level 3. Current value: " << localVar << "\n";
}

// Function for level 1 thread
void taskLevel1() {
    std::cout << "Level 1 thread is running.\n";
    std::thread t2(taskLevel2);  // Pass reference to level 2
    t2.join();  
    t3.join();
    std::cout << "Level 1 thread finished after level \n";
}

// Main function
int main() {
  
    std::cout << "Main thread is running. " << "\n";
    
   
    std::thread t1(taskLevel1);
    t1.join();  
    
    
    std::cout << "Main thread finished after level 1." <<"\n";
    return 0;
}
