// before_fix.cpp
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
