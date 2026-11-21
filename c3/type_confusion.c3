import std::io;

fn long add(long a, long b) => a + b;

fn int main(String[] args)
{
	String raw = args[1];
	io::printfn("%d", add(raw, 3)); // BREAK!
	io::printfn("%s %d", raw, add(1, 2));
	return 0;
}
