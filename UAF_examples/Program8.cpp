/*Description: In this program a vector of thread clients is declared in main() function. A vector of strings by 
name files is passed as a reference to run function inside the Worker class. As the main function lifetime ends'
it causes use after scope bug at line 16. To avoid this situation  join the threads in main() using a for loop
on client vector*/
#include <iostream>
#include <thread>
#include <vector>

class Worker {
public:
    Worker(int id, std::vector<std::string>& files) : id_(id), files_(files) {}

    void run() {
        // Simulate work on files
        std::cout << "Worker " << id_ << " processing files..." << std::endl;
        for (const auto& file : files_) {
            std::cout << "Worker " << id_ << " processing file: " << file << std::endl;
        }
        std::this_thread::sleep_for(std::chrono::seconds(1)); // Simulate some work
    }

private:
    int id_;
    std::vector<std::string>& files_; // Storing a reference to files
};

int main() {
    std::vector<std::thread> clients;
    unsigned _numWorkers = 4;
    
    std::vector<std::string> files = {"file1.txt", "file2.txt", "file3.txt"};
    
    clients.reserve(_numWorkers);
    
    for (unsigned i = 0; i < _numWorkers; i++) {
        clients.emplace_back([i, &files]() {
            Worker(i, files).run();
        });
    }

    
    // for (auto& client : clients) {
    //     client.join();
    // }

    std::cout << "Main function exiting..." << std::endl;
    return 0; // Program ends while threads are still running
}
