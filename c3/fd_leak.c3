import std::io;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	file::save("/tmp/bb_fd.txt", "x")!!;
	for (long i = 0; i < n; i++)
	{
		File f = file::open("/tmp/bb_fd.txt", "r")!!;
		char[1] b;
		f.read(&b)!!;
	}
	io::printn("done");
	return 0;
}
