import std::io;

fn int main(String[] args)
{
	char[]? text = file::load(mem, "/nonexistent/bb.conf");
	if (catch err = text)
	{
		io::eprintn("config missing");
		return; // BREAK!
		// CONTROL! return 1;
	}
	io::printn(text.len);
	return 0;
}
