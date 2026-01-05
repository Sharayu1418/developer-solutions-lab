#include <iostream>

#ifndef BUILD_MODE
#define BUILD_MODE "undefined"
#endif

int main() {
    std::cout << "Compile database test. Build mode: "
              << BUILD_MODE << std::endl;
    return 0;
}