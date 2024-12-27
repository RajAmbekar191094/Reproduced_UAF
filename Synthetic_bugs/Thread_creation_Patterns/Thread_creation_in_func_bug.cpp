
/* Description: Thread creation inside a function createThread(). Local variable is passed as reference to 
thread running the function task. As the thread is joined at wrong location (inside main) it creates a Use After 
Scope bug */

#include <iostream>
#include <thread>
#include <functional> 

std::thread t;
void task(int *ref) {
    *ref += 10;
    std::cout << "Task running in thread, modified value: " << *ref << "\n";
}


void createThread() {
    int localVar = 5;
    
    std::cout << "Before thread, localVar: " << localVar << "\n";
    
   
    t=std::thread(task, &localVar);  
    
   
    
    std::cout << "After thread, localVar: " << localVar << "\n";
}

int main() {
    createThread(); 
     t.join();  
    return 0;
}
