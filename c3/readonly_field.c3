import std::io;

struct Config { int port; }

fn int main(String[] args)
{
	Config c = { 8080 };
	c.port = 1;
	io::printn(c.port);
	return 0;
}
