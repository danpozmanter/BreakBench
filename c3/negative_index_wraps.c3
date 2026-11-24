import std::io;

fn int main(String[] args)
{
	int[3] readings = { 10, 20, 30 };
	long i = args[1].to_long()!!;
	io::printn(readings[i] - readings[i - 1]); // CONTROL! if (i > 0) { io::printn(readings[i] - readings[i - 1]); } else { io::printn("no previous"); }
	return 0;
}
