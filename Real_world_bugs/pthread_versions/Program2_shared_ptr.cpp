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

struct ThreadArg {
    std::shared_ptr<WorkerThreadData> data;
};

void* doWork(void* arg) {
    std::shared_ptr<WorkerThreadData>* dataPtr = static_cast<std::shared_ptr<WorkerThreadData>*>(arg);
    std::shared_ptr<WorkerThreadData> data = *dataPtr;  // Create a local shared pointer to extend lifetime
    delete dataPtr;  // Cleanup the dynamically allocated shared pointer wrapper
    
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
    std::shared_ptr<WorkerThreadData> data = std::make_shared<WorkerThreadData>();  // Smart pointer
    pthread_t workerThread;
    
    // Allocate a shared pointer wrapper dynamically to ensure proper reference counting
    std::shared_ptr<WorkerThreadData>* threadArg = new std::shared_ptr<WorkerThreadData>(data);
    
    if (pthread_create(&workerThread, nullptr, doWork, threadArg) != 0) {
        std::cerr << "Failed to create thread" << std::endl;
        delete threadArg;
        return -1;
    }
    
    pthread_detach(workerThread);  // Detaching the thread, but memory is safely managed
    
    return 0;  // Smart pointer automatically manages memory, no leaks or crashes
}

int main() {
    run_program();
    std::cout << "run_program went out of scope" << std::endl;
    sleep(2);
    return 0;
}
