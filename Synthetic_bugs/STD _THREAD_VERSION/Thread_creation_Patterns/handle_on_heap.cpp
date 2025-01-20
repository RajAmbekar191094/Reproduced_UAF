/*Description: Thread handle created on heap using new keyword in main function. 
Same handle used to run threadFunction passing counter as reference
Sensor data samples gets accumulated as per the frequency it generates. Algorithm needs a minimum number of samples
to do the required processing. A thread may be created dynamically whenever the required data is accumulated to 
complete the specific independent task and join back the flow.*/
#include <iostream>
#include <thread>


void threadFunction(int *counter) {
    std::cout << "Thread is running, counter = " << *counter << "\n";
}

int main() {
    int counter = 5;

   
    std::thread* t = new std::thread(threadFunction, &counter);  // Create a new thread


    if (t->joinable()) {
        t->join();  
    }


    delete t;

    std::cout << "Main function ends\n";
    return 0;
}
