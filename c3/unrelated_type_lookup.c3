import std::io;

fn int main(String[] args)
{
	int[3] ids = { 10, 20, 30 };
	String id = args[1];
	io::printn(array::contains(ids, id) ? "found" : "missing"); // CONTROL! io::printn(array::contains(ids, id.to_int()!!) ? "found" : "missing");
	return 0;
}
