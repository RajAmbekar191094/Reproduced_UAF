
/* Description: Thread creation inside a function*/

#include <iostream>
#include <thread>
#include <functional> 


void task(int *ref) {
    *ref += 10;
    std::cout << "Task running in thread, modified value: " << *ref << "\n";
}

e
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
