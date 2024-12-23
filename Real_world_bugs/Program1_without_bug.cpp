/*Description: The bug is rectified by declaring tok_value pointer outside parse_thread-id and 
then passing it as a parameter*/
// #include <iostream>
// #include <string>
// #include <cassert>

// void parse_thread_id(const char* str, const char** out_tmptok) {
//     *out_tmptok = str;  
// }

// int main() {
//     std::string input_value = "12345";
//     const char* tmptok;

   
//     std::string tok_value = input_value; 
//     parse_thread_id(tok_value.c_str(), &tmptok);  

    
//     assert(*tmptok == '1'); 
//     std::cout << "First character of tmptok: " << *tmptok << std::endl;

//     return 0;
// }
// #include <iostream>
// #include <string>
// #include <cassert>
// #include <cstdlib>  // For strtol
// #include <thread>

// void parse_thread_id(const char* str, char** out_tmptok) {
//     long result = strtol(str, out_tmptok, 0);  
//     std::cout << "Result from strtol: " << result << std::endl;
// }

// int main() {
//     std::string input_value = "12345";
//     char* tmptok;

//     // Create a persistent std::string
//     std::string tok_value = input_value;  // Create the string outside of the thread

//     // Create a thread to call parse_thread_id directly
//     std::thread thr(parse_thread_id, tok_value.c_str(), &tmptok);  // Pass the persistent string

//     // Detach the thread to run independently


//     // Attempt to assert the value of tmptok - should be safe now
//     assert(*tmptok == '\0');
//     thr.join();

//     return 0;
// }
#include <iostream>
#include <string>
#include <cassert>
#include <cstdlib>  // For strtol
#include <thread>

void parse_thread_id(const char* str, char** out_tmptok) {
    long result = strtol(str, out_tmptok, 0);  
    std::cout << "Result from strtol: " << result << std::endl;
}

int main() {
    std::string input_value = "12345";
    char* tmptok = nullptr; // Initialize tmptok

    // Create a persistent std::string
    std::string tok_value = input_value;  // Create the string outside of the thread

 
    parse_thread_id( tok_value.c_str(), &tmptok);  // Pass the persistent string

    

    // Attempt to assert the value of tmptok - should be safe now
    assert(*tmptok == '\0'); // Check if tmptok is not nullptr before dereferencing
   

    return 0;
}
