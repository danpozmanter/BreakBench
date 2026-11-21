import std::io;

struct Point { int x; int y; }

fn int main(String[] args)
{
	Point a = { 1, 2 };
	Point b = { 1, 2 };
	io::printn(a == b ? "equal" : "different"); // CONTROL! io::printn(a.x == b.x && a.y == b.y ? "equal" : "different");
	return 0;
}
