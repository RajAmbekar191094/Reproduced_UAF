#include <iostream>
#include <thread>
#include <mutex>
#include <unistd.h>  // for sleep

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
    data.workerError = 1;  // Simulate an error
    std::cout << "Worker finished with error code: " << data.workerError << std::endl;
}

int main() {
    WorkerThreadData data;  // Stack-allocated
    std::thread workerThread([&data]() {
        doWork(data);  // Using reference to stack-allocated data
    });

    workerThread.detach();  // Detaching the thread, risky!
    // The detached thread might access `data` after this point
    std::cout << "Main thread going out of scope" << std::endl;
    // sleep(2);  // Simulate some delay
    return 0;  // `data` will be destroyed here, thread may still be running
}
