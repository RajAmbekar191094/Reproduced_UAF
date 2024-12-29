/* description: A single object is passed as reference from one thread to another at multiple levels. Object localVar is owned by function taskLevel4 
and is passed by reference to thread t5. Thread t5 is joined at main() instead of taskLevel4 leading to potential Use After Scope*/

#include <iostream>
#include <pthread.h>
#include <unistd.h>

// Function for level 5 thread
void* taskLevel5(void* arg) {
    int* ref = static_cast<int*>(arg);
    *ref += 50;  // Modify the variable by reference
    sleep(5);
    std::cout << "Level 5 thread is running. Modified value: " << *ref << "\n";
    return nullptr;
}

// Function for level 4 thread
void* taskLevel4(void* arg) {
    int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 4 thread is running.\n";
    pthread_t t5;
    pthread_create(&t5, nullptr, taskLevel5, &localVar);  // Pass reference to level 5
    // pthread_join(t5, nullptr);  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Modified value: " << localVar << "\n";
    return nullptr;
}

// Function for level 3 thread
void* taskLevel3(void* arg) {
    std::cout << "Level 3 thread is running.\n";
    pthread_t t4;
    pthread_create(&t4, nullptr, taskLevel4, nullptr);  // Pass reference to level 4
    pthread_join(t4, nullptr);  // Wait for level 4 to finish
    std::cout << "Level 3 thread finished after level 4" << "\n";
    return nullptr;
}

// Function for level 2 thread
void* taskLevel2(void* arg) {
    std::cout << "Level 2 thread is running.\n";
    pthread_t t3;
    pthread_create(&t3, nullptr, taskLevel3, nullptr);  // Pass reference to level 3
    pthread_join(t3, nullptr);  
    std::cout << "Level 2 thread finished after level 3."<<"\n";/* description: A single object is passed as reference from one thread to another at multiple levels. Object localVar is owned by function taskLevel4 
and is passed by reference to thread t5.Thread t5 is joined at main() insytead of taskLevel4 leading to potential Use After Scope*/
#include<bits/stdc++.h>
#include <unistd.h>
#include <iostream>
#include <thread>
#include <functional> // for std::ref
using namespace std;

std::thread t5;
// Function for level 5 thread
void taskLevel5(int *ref) {
    *ref += 50;  // Modify the variable by reference
    sleep(5);
    std::cout << "Level 5 thread is running. Modified value: " << *ref << "\n";
}

// Function for level 4 thread
void taskLevel4() {
     int localVar = 100;  // Local variable to be passed by reference
    std::cout << "Level 4 thread is running.\n";
    t5=std::thread(taskLevel5, &localVar);  // Pass reference to level 5
   // t5.join();  // Wait for level 5 to finish
    std::cout << "Level 4 thread finished after level 5. Modified value: " << localVar<<"\n";
}

// Function for level 3 thread
void taskLevel3() {
    
    std::cout << "Level 3 thread is running.\n";
    std::thread t4(taskLevel4);  // Pass reference to level 4
    t4.join();  // Wait for level 4 to finish
    std::cout << "Level 3 thread finished after level 4"<< "\n";
}

// Function for level 2 thread
void taskLevel2() {
     
    std::cout << "Level 2 thread is running.\n";
    std::thread t3(taskLevel3);  // Pass reference to level 3
    t3.join();  
    std::cout << "Level 2 thread finished after level 3."<<"\n";
}

// Function for level 1 thread
void taskLevel1() {
    std::cout << "Level 1 thread is running.\n";
    std::thread t2(taskLevel2);  // Pass reference to level 2
    t2.join();  
    std::cout << "Level 1 thread finished after level \n";
}

// Main function
int main() {
  
    std::cout << "Main thread is running. " << "\n";
    
   
    std::thread t1(taskLevel1);
    t1.join();  
     t5.join(); 
    
    std::cout << "Main thread finished after level 1." <<"\n";
    return 0;
}

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
    
    pthread_t t5;
    pthread_join(t5, nullptr);  // Join level 5 thread from main()

    std::cout << "Main thread finished after level 1." <<"\n";
    return 0;
}
