/*Description: In the following program data is local to run_program function(stack variable). It is passed as
reference to a thread running doWork function when the run_program thread goes out of scope and there is use after scope
bug from line 22*/

#include <iostream>
#include <thread>
#include <mutex>
#include <memory>
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

int run_program() {
   WorkerThreadData data;  // Stack-allocated
    std::thread workerThread([&data]() {
        doWork(data);  // Passing smart pointer, which manages lifetime
    });

    workerThread.detach();  // Detaching the thread, but memory is safely managed
    // workerThread.join();
   
    //  sleep(2);  // Simulate some delay
    return 0;  // Smart pointer automatically manages memory, no leaks or crashes
}
int main(){
    run_program();
    std::cout << "run_program went out of scope" << std::endl;
    sleep(2);
}
