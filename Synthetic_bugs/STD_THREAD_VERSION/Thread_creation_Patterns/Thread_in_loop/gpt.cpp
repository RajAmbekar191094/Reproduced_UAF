#include <iostream>
#include <thread>
#include <vector>
using namespace std;

std::vector<std::thread> threads; // Vector to hold threads

void runFunc1(int x)
{
    cout << "Value of data received when pass by value: " << x << endl;
}

void runFunc2(int *x)
{
    cout << "Value of data received when pass by reference: " << *x << endl;
    delete x; // Clean up dynamically allocated memory
}

void runThreads()
{
    for (int i = 0; i < 6; i++)
    {
        if (i >= 0 && i <= 2)
        {
            int z = 30;
            threads.emplace_back(runFunc1, z); // Pass by value
        }
        else
        {
            threads.emplace_back(runFunc2, new int(30)); // Pass by reference (dynamically allocated)
        }
    }
}

int main()
{
    runThreads(); // Populate threads

    for (auto &thread : threads)
    {
        thread.join(); // Join all threads
    }

    return 0;
}
