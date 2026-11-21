import std::io;

fn void? save(String path)
{
	file::save(path, "data")!;
}

fn int main(String[] args)
{
	save("/nonexistent/dir/out.txt"); // BREAK!
	// CONTROL! (void)save("/nonexistent/dir/out.txt");
	io::printn("saved");
	return 0;
}
