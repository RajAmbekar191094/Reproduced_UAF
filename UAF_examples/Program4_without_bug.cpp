/*Description: In this program the thread ids are stored in a local array which is passed as reference to 
threadFunction. Once the main() function goes out of scope reference to threadId leads to Use after Scope
bug. To resolve this bug the lifetime of main function is extended using join statements in for loop*/
#include <stdio.h>
#include <pthread.h>
#include <unistd.h>  // For sleep function

#define kNumThreads 5  // Number of threads to create

// Thread function that prints the thread ID and checks for a specific number
void* threadFunction(void* arg) {
    int* threadId = static_cast<int*>(arg);  // Cast the argument to int pointer

    // Print the thread ID
    printf("Thread ID: %d\n", *threadId);

    // Check for a specific number (for example, thread ID equals 2)
    if (*threadId == 2) {
        printf("This is a special thread ID: %d\n", *threadId);
    }

    // Simulate some work
    sleep(5);
    return nullptr;
}

int main() {
    pthread_t threads[kNumThreads];
    int threadIds[kNumThreads];  // Array to hold thread IDs

    // Create threads in a loop
    for (int i = 0; i < kNumThreads; ++i) {
        threadIds[i] = i;  // Assign the thread ID
        // Create a thread and pass the address of the thread ID
        if (pthread_create(&threads[i], nullptr, threadFunction, &threadIds[i]) != 0) {
            perror("Failed to create thread");
            return 1;  // Exit on failure
        }
    }

    // Simulate main thread work (optional)
    printf("Main thread is doing some work...\n");
    sleep(2);  // Sleep to allow threads to finish their work

      for (size_t i = 0; i < kNumThreads; i++) {
    pthread_join(threads[i], nullptr);
  }

    // printf("Main thread exiting without joining threads.\n");
    return 0;
}
