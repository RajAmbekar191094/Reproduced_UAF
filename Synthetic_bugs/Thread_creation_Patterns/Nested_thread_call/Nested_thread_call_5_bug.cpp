/* description: A single object is passed as reference from one thread to another at multiple levels */
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
