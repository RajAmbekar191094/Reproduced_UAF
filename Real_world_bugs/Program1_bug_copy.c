#include <stdio.h>
#include <stdlib.h>
#include <assert.h>
#include <unistd.h>

void parse_thread_id(const char* str, char** out_tmptok) {
    long result = strtol(str, out_tmptok, 0);
    printf("Result from strtol: %ld\n", result);
}

int main() {
    const char* input_value = "12345";
    char* tmptok;

    // Call parse_thread_id function directly
    parse_thread_id(string(input_value).c_str(), &tmptok);

    // Attempt to assert the value of tmptok - may lead to undefined behavior
    assert(*tmptok == '\0');

    return 0;
}
