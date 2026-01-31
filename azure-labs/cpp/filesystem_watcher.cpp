#include <iostream>
#include <filesystem>
#include <chrono>
#include <thread>

namespace fs = std::filesystem;

void monitorDirectory(const std::string& path) {
    std::cout << "Watching directory: " << path << std::endl;
    while(true) {
        for (auto& entry : fs::directory_iterator(path)) {
            std::cout << "Found file: " << entry.path() << std::endl;
        }
        std::this_thread::sleep_for(std::chrono::seconds(5));
    }
}

int main() {
    std::string path = "./";
    monitorDirectory(path);
    return 0;
}