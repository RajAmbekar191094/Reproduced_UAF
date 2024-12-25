/*Description: Thread handle is captured  by value and then by reference */
#include <iostream>
#include <thread>

int main() {
    std::thread t1;  
    std::thread t2;  

    // Capture thread handle by value using a lambda
    auto captureByValue = [=]() mutable {
      
        std::thread tempThread([]() {
            std::cout << "Thread is running (handle captured by value)\n";
        });

     

            tempThread.join();

    };


    captureByValue();

    // Capture thread handle by reference using a lambda
    auto captureByReference = [&t2]() {
   
        t2 = std::thread([]() {
            std::cout << "Thread is running (handle captured by reference)\n";
        });
    };


    captureByReference();

  
    // if (t2.joinable()) {
        t2.join();  
    // }

    std::cout << "Main function ends\n";
    return 0;
}
