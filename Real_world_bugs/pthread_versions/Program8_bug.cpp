#include <iostream>
#include <pthread.h>
#include <vector>
#include <unistd.h>

class Worker {
public:
    Worker(int id, std::vector<std::string>& files) : id_(id), files_(files) {}

    void run() {
        std::cout << "Worker " << id_ << " processing files..." << std::endl;
        for (const auto& file : files_) {
            std::cout << "Worker " << id_ << " processing file: " << file << std::endl;
        }
        sleep(1);
    }

private:
    int id_;
    std::vector<std::string>& files_;
};

struct ThreadArgs {
    int id;
    std::vector<std::string>* files;
};

void* startWorker(void* arg) {
    ThreadArgs* args = static_cast<ThreadArgs*>(arg);
    Worker(args->id, *(args->files)).run();
    return nullptr;
}

int main() {
    std::vector<pthread_t> clients;
    unsigned _numWorkers = 4;
    std::vector<std::string> files = {"file1.txt", "file2.txt", "file3.txt"};

    clients.reserve(_numWorkers);
    std::vector<ThreadArgs> threadArgs;
    threadArgs.reserve(_numWorkers);
    
    for (unsigned i = 0; i < _numWorkers; i++) {
        threadArgs.push_back({static_cast<int>(i), &files});
        pthread_t thread;
        pthread_create(&thread, nullptr, startWorker, &threadArgs[i]);
        clients.push_back(thread);
    }
    
    std::cout << "Main function exiting..." << std::endl;
    return 0;
}
