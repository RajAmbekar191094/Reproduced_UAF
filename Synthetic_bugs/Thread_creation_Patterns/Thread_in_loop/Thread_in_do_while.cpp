#include <iostream>
#include <thread>
#include <vector>
#include <mutex>
#include <atomic>
using namespace std;

// std::mutex mtx;
// std::atomic<int> sharedVar(0);

void threadTask(int id, int *sharedData) {
    // std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Simulate work
    // std::lock_guard<std::mutex> lock(mtx);
    (*sharedData)++; // Update shared data
    std::cout << "Thread " << id << " updated sharedData to " << *sharedData << "\n";
}

void threadTask2(int id, int sharedData) {
    // std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Simulate work
    // std::lock_guard<std::mutex> lock(mtx);
    sharedData ++; // Update shared data
    std::cout << "Thread " << id << " updated sharedData to " << sharedData << "\n";
}

int main() {
    std::vector<std::thread> threads;
    int sharedData = 0;
    int id = 1;

    // Create thread chain with data dependency
    do 
    {
        if(sharedData>1 && sharedData<10)
            {
            threads.emplace_back(threadTask2, id++, sharedData);
            sharedData++;
            // threads.back().join();
            }
        else
        {
            threads.emplace_back(threadTask, id++, &sharedData);
            cout<< threads.back().get_id()<<" is joining"<<endl;
            threads.back().join();

        }

    } while (sharedData < 50);

    for ( int i=2;i<10;i++) {
        std::cout << threads[i].get_id() <<" is joining"<<endl;
        threads[i].join();
    }

    std::cout << "Final sharedData: " << sharedData << "\n";
    return 0;
}
