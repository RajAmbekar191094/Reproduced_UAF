/*Description: The bug is rectified by declaring tok_value pointer outside parse_thread-id and 
then passing it as a parameter*/
#include <iostream>
#include <string>
#include <cassert>

void parse_thread_id(const char* str, const char** out_tmptok) {
    *out_tmptok = str;  
}

int main() {
    std::string input_value = "12345";
    const char* tmptok;

   
    std::string tok_value = input_value; 
    parse_thread_id(tok_value.c_str(), &tmptok);  

    
    assert(*tmptok == '1'); 
    std::cout << "First character of tmptok: " << *tmptok << std::endl;

    return 0;
}
