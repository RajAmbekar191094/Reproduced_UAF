/*Description: In this program a function call chain is created like main->a()->b()->c()->runthread.
In function c() threads are created in a loop where a local object is shared as reference or value depending on the iteration count.
In an autonomous vehicle system, a situation can arise where a sensor data (e.g., LiDAR or camera readings) must propagate through a 
pipeline of processing functions, each adding or refining data before the final stage spawns a thread to process the enriched data.*/
#include <iostream>
#include <thread>
#include <vector>
using namespace std;

vector<thread> td;

void runThread(int *t)
{
    cout << "Value passed from func by Ref: " << *t << endl;
}

void runThreadByVal(int t)
{
    cout << "Value passed from func by Val: " << t << endl;
}

void c(int *z)
{
    for (int i = 1; i < 5; i++)
    {
        if (i == 1 || i == 2) // Corrected condition
        {
            td.emplace_back(thread(runThread, z)); // Pass pointer
        }
        else
        {
            td.emplace_back(thread(runThreadByVal, *z)); // Pass value
        }
    }

    for (auto &it : td) // Use reference to join threads
    {
        it.join();
    }
}

void b()
{
    int y = 10;
    c(&y); // Pass the address of y
}

void a()
{
    b();
}

int main()
{
    a();
    return 0;
}
