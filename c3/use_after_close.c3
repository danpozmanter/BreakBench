import std::io;

fn int main(String[] args)
{
	File f = file::open("/tmp/bb_close.txt", "w")!!;
	f.write("a")!!;
	f.close()!!;
	f.write("b")!!; // BREAK!
	io::printn("ok");
	return 0;
}
