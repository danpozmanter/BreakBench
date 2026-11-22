import std::io;

fn int main(String[] args)
{
	String line = args[1];
	sz? pos = line.index_of_char(':');
	io::printn(line[pos + 1..]); // CONTROL! io::printn(line[(pos ?? -1) + 1..]);
	return 0;
}
