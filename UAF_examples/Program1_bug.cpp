/*Description: Following is program with a bug. The string object pointer is declared while passing as
parameter to process_string function as reference along with tmptok. Inside processs_string a new string pointer is created which is made to point
input value. After line 21 the object passed goes out of scope and tmptok points to a NULL pointer
assert at line 25 gives rise to NULL pointer dereference
*/

#include <iostream>
#include <string>
#include <cassert>
#include <cstdlib>  // For strtol
#include <thread>
#include <unistd.h>  

void parse_thread_id(const char* str, char** out_tmptok) {
    long result = strtol(str, out_tmptok, 0);  
    std::cout << "Result from strtol: " << result << std::endl;
}

int main() {
    std::string input_value = "12345";
    char* tmptok;

    // Create a thread to call parse_thread_id directly
    // std::thread thr(parse_thread_id, std::string(input_value).c_str(), &tmptok);  // Temporary string created here
    parse_thread_id( std::string(input_value).c_str(),&tmptok);

    // Detach the thread to run independently
    
    sleep(5);
    // Attempt to assert the value of tmptok - may lead to undefined behavior
    // assert(*tmptok == '\0');
    //   thr.join();
    assert(*tmptok == '\0');
  

    return 0;
}

