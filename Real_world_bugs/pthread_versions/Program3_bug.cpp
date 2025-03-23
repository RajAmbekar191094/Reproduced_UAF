#include <iostream>
#include <pthread.h>
#include <unistd.h>

class B {
public:
    void notify(bool success) const {
        if (success) {
            std::cout << "Work done successfully!" << std::endl;
        } else {
            std::cout << "Work failed!" << std::endl;
        }
    }
};

struct ThreadArg {
    int A;
    B callback;
};

void* doWork(void* arg) {
    ThreadArg* data = static_cast<ThreadArg*>(arg);
    std::cout << "Doing some work..." << std::endl;
    
    if (data->A > 0) {
        data->callback.notify(true);
    } else {
        data->callback.notify(false);
    }
    
    delete data; // Cleanup dynamically allocated memory
    return nullptr;
}

pthread_t t1;

void execute(int A, B callback) {
    ThreadArg* threadArg = new ThreadArg{A, callback}; // Dynamically allocate memory for thread arguments
    
    if (pthread_create(&t1, nullptr, doWork, threadArg) != 0) {
        std::cerr << "Failed to create thread" << std::endl;
        delete threadArg;
    }
}

void runProgram() {
    int A = 5;
    B callback;
    execute(A, callback);
}

int main() {
    runProgram();
    std::cout << "Run gone" << std::endl;
    pthread_join(t1, nullptr);
    return 0;
}
