import std::io;

fn int main(String[] args)
{
	File f = file::open("/dev/full", "w")!!;
	defer (void)f.close(); // BREAK!
	f.write("data\n")!!; // CONTROL! if (catch f.write("data\n")) { io::printn("failed"); return 0; }
	// CONTROL! if (catch f.close()) { io::printn("failed"); return 0; }
	io::printn("saved");
	return 0;
}
