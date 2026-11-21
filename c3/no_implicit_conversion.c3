import std::io;

fn int main(String[] args)
{
	long big = 42;
	int small = (int)big;
	int wrong = big; // BREAK!
	io::printn(small);
	return 0;
}
