import std::io;

fn int main(String[] args)
{
	sz n = (sz)args[1].to_long()!!;
	char[] buf = mem::new_array(char, n);
	buf[n - 1] = 1;
	io::printfn("%d", buf.len);
	return 0;
}
