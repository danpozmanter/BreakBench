import std::io;

fn int main(String[] args)
{
	File f = file::open("/dev/full", "w")!!;
	defer (void)f.close();
	f.write("data\n")!!;
	io::printn("saved");
	return 0;
}
