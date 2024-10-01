#include <stdio.h>
#include <pthread.h>
#include <unistd.h>  // For sleep function

// Define Struct1 and Struct2
typedef struct {
    int value;
} struct1;

typedef struct {
    int value_from_struct1;
} struct2;

// Shared condition flag
volatile int exit_flag = 0;  // Common condition to exit both loops

// Thread function (Func2)
void* Func2(void* arg) {
    struct2* s2 = (struct2*)arg;

    while (!exit_flag) {
        printf("Thread: Value from Struct1: %d\n", s2->value_from_struct1);
        sleep(1); // Simulate some work
    }

    printf("Thread: Exiting loop.\n");
    pthread_exit(NULL);
}

// Function that creates a thread (Func1)
void Func1(struct1* s1, struct2* s2) {
    pthread_t tid;

    // Assign value from Struct1 to Struct2
    s2->value_from_struct1 = s1->value;

    // Create thread and pass reference to s2
    int err = pthread_create(&tid, NULL, Func2, (void*)s2);
    if (err != 0) {
        printf("Failed to create thread\n");
        return;
    }

    // Thread is created, detach the thread
    pthread_detach(tid);
}

int main() {
    struct1 s1;  // Local object of Struct1
    struct2 s2;  // Stack variable of Struct2 (allocated in main)
    
    s1.value = 42;  // Assign some value

    // Call Func1 with a reference to s1 and the stack variable s2
    Func1(&s1, &s2);

    // Main loop: same condition as Func2 (Thread)
    while (!exit_flag) {
        printf("Main: Running main loop.\n");
        sleep(1);  // Simulate some work
    }

    // Set the exit flag to stop the loop in both main and thread
    printf("Main: Exiting loop.\n");
    exit_flag = 1;  // Set the exit flag to break the loops
    return exit_flag;
}
