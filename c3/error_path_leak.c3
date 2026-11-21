import std::io;

faultdef INVALID_REQUEST;

fn void? process(String request, long id)
{
	char[] buf = mem::alloc_array(char, 4096);
	defer free(buf.ptr);
	String text = (String)io::bprintf(buf, "%s#%d", request, id)!;
	if (text[0] != '{') return INVALID_REQUEST~;
}

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	long failures = 0;
	for (long i = 0; i < n; i++)
	{
		if (catch process("not json", i)) failures++;
	}
	io::printn(failures == n ? "done" : "unexpected");
	return 0;
}
