/*Description: Following is program with a bug. The string object pointer is declared while passing as
parameter to process_string function as reference along with tmptok. Inside processs_string a new string pointer is created which is made to point
input value. After line 21 the object passed goes out of scope and tmptok points to a NULL pointer
assert at line 25 gives rise to NULL pointer dereference
*/

#include <iostream>
#include <string>
#include <cassert>
#include <cstdlib>  // For strtol

void process_string(const char* str, char** out_tmptok) {
    long result = strtol(str, out_tmptok, 0);  
    std::cout << "Result from strtol: " << result << std::endl;
}

int main() {
    std::string input_value = "12345";
    char* tmptok;

    // Bug: Using a temporary std::string
    process_string(std::string(input_value).c_str(), &tmptok);  

   
     assert(*tmptok == '1'); 

    return 0;
}
