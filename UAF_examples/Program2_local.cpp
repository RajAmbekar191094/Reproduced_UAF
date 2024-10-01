#include <iostream>
#include <thread>
#include <mutex>
#include <unistd.h>  

class WorkerThreadData {
public:
    explicit WorkerThreadData() : workerDone(false), workerError(0) {}
    std::mutex lock;
    bool workerDone;
    int workerError;
};

void doWork(WorkerThreadData& data) {
    sleep(1);  // Simulate some work
    std::lock_guard<std::mutex> guard(data.lock);
    data.workerDone = true;
    data.workerError = 1;  
    std::cout << "Worker finished with error code: " << data.workerError << std::endl;
}

int main() {
    WorkerThreadData data;  // Stack-allocated
    std::thread workerThread([&data]() {
        doWork(data);  
    });

    workerThread.detach();  
    std::cout << "Main thread going out of scope" << std::endl;
    // sleep(2);  
    return 0;  
}
