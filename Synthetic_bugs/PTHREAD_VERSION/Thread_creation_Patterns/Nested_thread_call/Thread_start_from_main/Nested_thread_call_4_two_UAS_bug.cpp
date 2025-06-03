/* description: A single object is passed as reference from one thread to another at multiple levels. The object localVar is owned by function taskLevel3
and is passed as a reference to thread t4. Thread t4 is joined in main() function instead of taskLevel4 which leads to Use After Scope bug*/

#include <iostream>
#include <pthread.h>
pthread_t t4;
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
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 3 thread is running.\n";
    
    pthread_create(&t4, nullptr, taskLevel4, &localVar);  // Pass reference to level 4
   
    std::cout << "Level 3 thread finished after level 4. Current value: " << localVar << "\n";
    return nullptr;
}

// Function for level 2 thread
void* taskLevel2(void* arg) {
    std::cout << "Level 2 thread is running.\n";
    pthread_t t3;
    pthread_create(&t3, nullptr, taskLevel3, nullptr);  // Pass reference to level 3
    pthread_join(t3, nullptr);  
    pthread_join(t4, nullptr);  // Wait for level 4 to finish
    std::cout << "Level 2 thread finished after level 3."<<"\n";
    return nullptr;
}

// Function for level 1 thread
void* taskLevel1(void* arg) {
    std::cout << "Level 1 thread is running.\n";
    pthread_t t2;
    pthread_create(&t2, nullptr, taskLevel2, nullptr);  // Pass reference to level 2
    pthread_join(t2, nullptr);  
    std::cout << "Level 1 thread finished after level \n";
    return nullptr;
}

// Main function
int main() {
    std::cout << "Main thread is running. " << "\n";
    
    pthread_t t1;
    pthread_create(&t1, nullptr, taskLevel1, nullptr);
    pthread_join(t1, nullptr);  
    
    std::cout << "Main thread finished after level 1." <<"\n";
    return 0;
}
