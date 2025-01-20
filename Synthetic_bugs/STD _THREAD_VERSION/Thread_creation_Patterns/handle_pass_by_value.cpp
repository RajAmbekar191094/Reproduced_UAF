/*Description: Thread handle is passed by value to a function startThread which uses the same handle
to create thread running threadFunction*/

#include <iostream>
#include <thread>


void threadFunction(int counter) {
    std::cout << "Thread is running (handle passed by value), counter = " << counter << "\n";
}


void startThread(std::thread t, int counter) {
    t = std::thread(threadFunction, counter);  
    // if (t.joinable()) {
        t.join();  
    // }
}

int main() {
    std::thread t;  
    int counter = 10;
    startThread(t, counter);  
    std::cout << "Main function ends\n";
    return 0;
}
