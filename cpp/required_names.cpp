#include <iostream>

struct Offset { int dx; int dy; };

static void move(Offset o) { std::cout << o.dx << " " << o.dy << "\n"; }

int main() { move({4, 3}); }
