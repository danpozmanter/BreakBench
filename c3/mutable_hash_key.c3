import std::io;
import std::collections::map;

fn int main()
{
	HashMap{int[2], bool} seen;
	seen.init(mem);
	int[2] key = { 1, 2 };
	seen.set(key, true);
	key[0] = 9;
	seen.@each(; int[2] e, bool v)
	{
		io::printn(seen.has_key(e) ? "found" : "lost");
	};
	return 0;
}
