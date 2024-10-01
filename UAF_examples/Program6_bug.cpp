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
void Func1(struct1* s1) {
    pthread_t tid;
    struct2 s2;  // Local variable of Struct2 inside Func1

    // Assign value from Struct1 to Struct2
    s2.value_from_struct1 = s1->value;

    // Create thread and pass reference to local s2
    int err = pthread_create(&tid, NULL, Func2, (void*)&s2);
    if (err != 0) {
        printf("Failed to create thread\n");
        return;
    }

    // Thread is created, now continue with main thread's work
    pthread_detach(tid);  // Detach the thread so we don't need to join it later
}

int main() {
    struct1 s1;  // Local object of Struct1
    s1.value = 42;  // Assign some value

    // Call Func1 with a reference to s1
    Func1(&s1);

    // Main loop: same condition as Func2 (Thread)
    while (!exit_flag) {
        printf("Main: Running main loop.\n");
        sleep(1);  // Simulate some work
    }

    // Set the exit flag to stop the loop in both main and thread
    printf("Main: Exiting loop.\n");
    return exit_flag;
}
