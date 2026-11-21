#include <cstdio>
#include <cstring>
#include <iostream>
#include <vector>

int main() {
    auto session = new std::vector<unsigned char>(64);
    std::memcpy(session->data() + 32, "SECRET-TOKEN", 12);
    delete session;
    std::vector<unsigned char> reply(64);
    for (int i = 32; i < 44; i++) std::printf("%02x", reply[i]);
    std::printf("\n");
}
