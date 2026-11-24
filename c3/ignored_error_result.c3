import std::io;

fn void? save(String path)
{
	file::save(path, "data")!;
}

fn int main(String[] args)
{
	save("/dev/null/out.txt"); // BREAK!
	// CONTROL! (void)save("/dev/null/out.txt");
	io::printn("saved");
	return 0;
}
