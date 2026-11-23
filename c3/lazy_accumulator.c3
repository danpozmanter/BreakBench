import std::io;

fn int main(String[] args)
{
	long count = args[1].to_long()!!;
	File source = file::open("/dev/zero", "rb")!!;
	long total = 0;
	for (long i = 0; i < count; i++)
	{
		char[] message = mem::alloc_array(char, 4096);
		total += source.read(message)!!;
		free(message.ptr);
	}
	(void)source.close();
	io::printfn("%d", total);
	return 0;
}
