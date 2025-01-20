/*Description: 50 threads are created in do while loop. First 40 threads are created in else block and last 10 in if block. 
The threads are joined outside the  if-else block leading to Use After Scope bug 
In image processing applications, such as those used in medical imaging (e.g., MRI or CT scan analysis), 
video streaming, or computer vision systems, large images or frames are divided into smaller blocks to be processed 
by multiple threads in parallel. Each thread processes a part of the image, performs necessary computations, and updates the result. */
#include <iostream>
#include <thread>
#include <vector>
#include <mutex>
#include <atomic>
#include <bits/stdc++.h>
#include <unistd.h>

using namespace std;

// std::mutex mtx;
// std::atomic<int> sharedVar(0);threads[i].join();

void threadTask(int id, int *sharedData) {
    sleep(10);
    // std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Simulate work
    // std::lock_guard<std::mutex> lock(mtx);
   // (*sharedData)++; // Update share/* description: A single object is passed as reference from one thread to another at multiple levels */d data
    std::cout <<endl<< "Thread " << id << " updated sharedData to " << *sharedData << "\n";
}

void threadTask2(int id, int sharedData) {
    // std::this_thread::sleep_for(std::chrono::milliseconds(100)); // Simulate work
    // std::lock_guard<std::mutex> lock(mtx);
   // sharedData ++; // Update shared data

    std::cout <<endl<< "Thread " << id << " updated sharedData to " << sharedData << "\n";
}
int *p;
int main() {
    std::vector<std::thread> threads;
    
    int id = 1;
    int tcount=0;

    // Create thread chain with data dependency
    do 
    {
       
        if(tcount>40)
            {
            int sharedData= 2;
            threads.emplace_back(threadTask2, id++, sharedData);
            tcount++;
           // sharedData++;
            // threads.back().join();
            }
        else
        {
            int sharedData= 2;
            threads.emplace_back(threadTask, id++, &sharedData);
             tcount++;
            // cout<< threads.back().get_id()<<"is joining"<<endl;
            // threads.back().join();

        }
        
    } while (tcount < 50);
    cout<<"Loop completed !!!"<<endl;

    for ( int i=0;i< tcount;i++) 
    {
        std::cout << threads[i].get_id() <<"is joining"<<endl;
        threads[i].join();
    }

    // std::cout << "Final sharedData: " << sharedData << "\n";
    return 0;
}
