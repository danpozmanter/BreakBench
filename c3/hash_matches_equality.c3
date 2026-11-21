import std::io;
import std::collections::map;

struct Point { int x; int y; String label; }

fn bool Point.equals(self, Point other) @operator(==) => self.x == other.x && self.y == other.y;

// CONTROL! fn uint Point.hash(self) => (uint)(self.x * 31 + self.y);

alias Points = HashMap{Point, bool};

fn int main(String[] args)
{
	Points s;
	s.init(mem);
	s.set({ 1, 2, "a" }, true);
	s.set({ 1, 2, "b" }, true);
	io::printn(s.len());
	return 0;
}
