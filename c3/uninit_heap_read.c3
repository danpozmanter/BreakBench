import std::io;

fn int main(String[] args)
{
	char[] session = mem::alloc_array(char, 64);
	mem::copy(&session[32], "SECRET-TOKEN".ptr, 12);
	free(session.ptr);
	char[] reply = mem::alloc_array(char, 64);
	foreach (b : reply[32:12]) io::printf("%02x", b);
	io::printn();
	return 0;
}
