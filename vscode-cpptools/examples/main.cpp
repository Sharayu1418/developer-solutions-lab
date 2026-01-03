#define MY_DEFINE 1 

#include <iostream>

int main() {
#ifdef MY_DEFINE
    std::cout << "MY_DEFINE está definido" << std::endl;
#else
    #error "MY_DEFINE no está definido"
#endif
    return 0;
}