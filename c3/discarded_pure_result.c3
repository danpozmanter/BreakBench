import std::io;

fn int main()
{
	String name = "ada";
	name.to_upper_copy(mem); // BREAK!
	io::printn(name); // CONTROL! io::printn(name.to_upper_copy(mem));
	return 0;
}
