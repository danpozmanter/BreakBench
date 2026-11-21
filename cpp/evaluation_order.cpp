#include <iostream>

static int counter;

static int next() { return ++counter; }

static void pair(int a, int b) { std::cout << a << " " << b << "\n"; }

int main() { pair(next(), next()); }
