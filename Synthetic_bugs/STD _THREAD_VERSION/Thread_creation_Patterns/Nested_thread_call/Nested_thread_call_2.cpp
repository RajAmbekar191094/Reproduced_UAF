/* description: A single object is passed as reference from one thread to another at multiple levels. No Use AFter Scope as localVar os owned by taskLevel1
and joined immediately inside same function */

#include <iostream>
#include <thread>
#include <functional> // for std::ref

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
void taskLevel2(int *ref) {
    std::cout << "Level 2 thread is running.\n";
    std::thread t3(taskLevel3, ref);  // Pass reference to level 3
    t3.join();  
    std::cout << "Level 2 thread finished after level 3. Current value: " << *ref << "\n";
}

// Function for level 1 thread
void taskLevel1() {
    int localVar = 100;
    std::cout << "Level 1 thread is running.\n";
    std::thread t2(taskLevel2, &localVar);  // Pass reference to level 2
    t2.join();  
    std::cout << "Level 1 thread finished after level 2. Final value: " << localVar << "\n";
}

// Main function
int main() {
    // int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Main thread is running"<<std::endl;
    
   
    std::thread t1(taskLevel1);
    t1.join();  
    
    // std::cout << "Main thread finished after level 1. Final value: " << localVar << "\n";
    return 0;
}
