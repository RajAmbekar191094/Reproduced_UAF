
/* Description: Thread creation inside a function. A local variable by name localVar
passed as a ref to task function. Thread is joined in same createThread function so there is no bug
Imagine a temperature monitoring system used in industrial equipment, where multiple sensors measure the temperature at different parts
 of the equipment. The system must periodically acquire data from these sensors and update a shared control system that takes actions 
 (e.g., turning on a cooling fan) based on temperature readings.
In this embedded system, each sensor reading could be handled in a separate thread, offloading the task from the main program loop.*/

#include <iostream>
#include <thread>
#include <functional> 


void task(int *ref) {
    *ref += 10;
    std::cout << "Task running in thread, modified value: " << *ref << "\n";
}


void createThread() {
    int localVar = 5;
    
    std::cout << "Before thread, localVar: " << localVar << "\n";
    
   
    std::thread t(task, &localVar);  
    
    t.join();  
    
    std::cout << "After thread, localVar: " << localVar << "\n";
}

int main() {
    createThread(); 
    return 0;
}
