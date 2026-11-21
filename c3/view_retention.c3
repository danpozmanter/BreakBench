import std::io;
import std::collections::list;

fn int main(String[] args)
{
	long n = args[1].to_long()!!;
	List{char[]} heads;
	List{String} prefixes;
	for (long i = 0; i < n; i++)
	{
		char[] buf = mem::alloc_array(char, 32768);
		foreach (&b : buf) *b = (char)i;
		char[] head = mem::alloc_array(char, 16);
		head[..] = buf[:16];
		heads.push(head);
		free(buf.ptr);
		char[] big = mem::alloc_array(char, 32768);
		foreach (&c : big) *c = (char)('a' + i % 26);
		prefixes.push(((String)big[:16]).copy(mem));
		free(big.ptr);
	}
	io::printfn("%d", heads.len());
	return 0;
}
