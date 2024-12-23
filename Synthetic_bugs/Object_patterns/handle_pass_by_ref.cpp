/*Description: Thread handle is passed by reference to a function startThread which uses the same handle
to create thread running threadFunction*/
#include <iostream>
#include <thread>


void threadFunction(int counter) {
    std::cout << "Thread is running (handle passed by reference), counter = " << counter << "\n";
}


void startThread(std::thread& t, int counter) {
    t = std::thread(threadFunction, counter);  
}

int main() {
    std::thread t;  
    int counter = 5;
    startThread(t, counter); 
    // if (t.joinable()) {
        t.join(); 
    // }
    std::cout << "Main function ends\n";
    return 0;
}
   