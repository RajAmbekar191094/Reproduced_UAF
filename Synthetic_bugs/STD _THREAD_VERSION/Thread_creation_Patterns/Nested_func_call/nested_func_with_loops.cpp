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
