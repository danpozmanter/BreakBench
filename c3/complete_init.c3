import std::io;

struct Config { int timeout; int retries; }

fn int main(String[] args)
{
	Config c = { .timeout = 30 }; // CONTROL! Config c = { .timeout = 30, .retries = 3 };
	io::printn(c.retries);
	return 0;
}
