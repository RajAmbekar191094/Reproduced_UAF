#include <iostream>
#include <thread>
#include <vector>
#include <mutex>
#include <atomic>

std::mutex mtx;
std::atomic<int> sharedVar(0);

void threadTask(int id, int& sharedData) {
    std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Simulate work
    std::lock_guard<std::mutex> lock(mtx);
    sharedData += id; // Update shared data
    std::cout << "Thread " << id << " updated sharedData to " << sharedData << "\n";
}

int main() {
    std::vector<std::thread> threads;
    int sharedData = 0;
    int id = 1;

    // Create thread chain with data dependency
    do {
        threads.emplace_back(threadTask, id++, std::ref(sharedData));
    } while (sharedData < 50);

    for (auto& t : threads) {
        t.join();
    }

    std::cout << "Final sharedData: " << sharedData << "\n";
    return 0;
}
