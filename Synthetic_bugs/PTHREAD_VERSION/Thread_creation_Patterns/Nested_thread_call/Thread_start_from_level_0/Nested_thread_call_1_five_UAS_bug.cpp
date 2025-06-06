/* Description: A single object is passed as reference from one thread to another at multiple levels. A local object is declared in taskLevel0 which is passed
all the way to taskLevel5 where it is finally used. Joining the thread at main() instead of taskLevel0 who is the owner of the object leads to Use After Scope 
bug */

#include <iostream>
#include <pthread.h>
#include <functional> // for std::ref

pthread_t t1;


// Function for level 5 thread
void* taskLevel5(void* arg) {
    int* ref = static_cast<int*>(arg);
    *ref += 50;  // Modify the variable by reference
    std::cout << "Level 5 thread is running. Modified value: " << *ref << "\n";
    return nullptr;
}

// Function for level 4 thread
void* taskLevel4(void* arg) {
    int* ref = static_cast<int*>(arg);
    std::cout << "Level 4 thread is running.\n";
    pthread_t t5;
    pthread_create(&t5, nullptr, taskLevel5, ref);  // Pass reference to level 5
    pthread_join(t5, nullptr);  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Current value: " << *ref << "\n";
    return nullptr;
}

// Function for level 3 thread
void* taskLevel3(void* arg) {
    int* ref = static_cast<int*>(arg);
    std::cout << "Level 3 thread is running.\n";
    pthread_t t4;
    pthread_create(&t4, nullptr, taskLevel4, ref);  // Pass reference to level 4
    pthread_join(t4, nullptr);  // Wait for level 4 to finish
    std::cout << "Level 3 thread finished after level 4. Current value: " << *ref << "\n";
    return nullptr;
}

// Function for level 2 thread
void* taskLevel2(void* arg) {
    int* ref = static_cast<int*>(arg);
    std::cout << "Level 2 thread is running.\n";
    pthread_t t3;
    pthread_create(&t3, nullptr, taskLevel3, ref);  // Pass reference to level 3
    pthread_join(t3, nullptr);  // Wait for level 3 to finish
    std::cout << "Level 2 thread finished after level 3. Current value: " << *ref << "\n";
    return nullptr;
}

// Function for level 1 thread
void* taskLevel1(void* arg) {
    int* ref = static_cast<int*>(arg);
    std::cout << "Level 1 thread is running.\n";
    pthread_t t2;
    pthread_create(&t2, nullptr, taskLevel2, ref);  // Pass reference to level 2
    pthread_join(t2, nullptr);  // Wait for level 2 to finish
    std::cout << "Level 1 thread finished after level 2. Current value: " << *ref << "\n";
    return nullptr;
}

// Main function
void* taskLevel0(void* arg) {
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 0 is running. Initial value: " << localVar << "\n";
    
    pthread_create(&t1, nullptr, taskLevel1, &localVar);
    // pthread_join(t1, nullptr);  // Wait for thread at level 1 to finish
    
    std::cout << "Level 0 is running. Final value: " << localVar << "\n";
    return nullptr;
}

int main() {
   
    
    taskLevel0(nullptr);
    pthread_join(t1, nullptr);  // Wait for thread at level 1 to finish
    return 0;
}
