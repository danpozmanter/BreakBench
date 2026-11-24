import std::io;

fn int main(String[] args)
{
	String name = "a👍b";
	int n = args[1].to_int()!!;
	io::printn(name[0:n]); // CONTROL! usz i = 0; for (int k = 0; k < n && i < name.len; k++) { i++; while (i < name.len && (name[i] & 0xC0) == 0x80) i++; } io::printn(name[:i]);
	return 0;
}
