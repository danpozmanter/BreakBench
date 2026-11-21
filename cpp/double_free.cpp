#include <iostream>

struct Rec { long value; long pad[3]; };

struct Session {
    Rec *rec;
    explicit Session(long v) : rec(new Rec{v, {}}) {}
    ~Session() { delete rec; }
};

Rec *registry[4];

int main() {
    {
        Session a(0);
        Session b = a;
        registry[0] = b.rec;
    }
    Rec *x = new Rec{1, {}};
    Rec *y = new Rec{2, {}};
    registry[1] = x;
    registry[2] = y;
    std::cout << registry[1]->value << "\n";
}
