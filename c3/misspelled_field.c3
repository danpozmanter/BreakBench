import std::io;

struct Config
{
	String color;
}

fn int main(String[] args)
{
	Config cfg = { "blue" };
	cfg.colour = "red"; // BREAK!
	io::printn(cfg.color);
	return 0;
}
