
/* Description: Thread creation inside a function. A local variable by name localVar
passed as a ref to task function. Thread is joined in same createThread function so there is no bug*/

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
