#include <iostream>
#include <pthread.h>
#include <unistd.h>  // for sleep
#include <memory>
#include <mutex>

class WorkerThreadData {
public:
    explicit WorkerThreadData() : workerDone(false), workerError(0) {}
    std::mutex lock;
    bool workerDone;
    int workerError;
};

void* doWork(void* arg) {
    WorkerThreadData* data = static_cast<WorkerThreadData*>(arg);
    sleep(1);  // Simulate some work
    {
        std::lock_guard<std::mutex> guard(data->lock);
        data->workerDone = true;
        data->workerError = 1;  // Simulate an error
        std::cout << "Worker finished with error code: " << data->workerError << std::endl;
    }
    return nullptr;
}

int run_program() {
    WorkerThreadData data;  // Stack-allocated
    pthread_t workerThread;
    
    if (pthread_create(&workerThread, nullptr, doWork, &data) != 0) {
        std::cerr << "Failed to create thread" << std::endl;
        return -1;
    }
    
    // pthread_detach(workerThread);  // Detaching the thread, but memory is not managed safely
    pthread_join(workerThread);
    
    return 0;  // Potential use-after-scope bug
}

int main() {
    run_program();
    std::cout << "run_program went out of scope" << std::endl;
    sleep(2);
    return 0;
}
