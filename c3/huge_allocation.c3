import std::io;

fn int main(String[] args)
{
	sz n = (sz)args[1].to_long()!!;
	// CONTROL! if (n > 1 << 30) { io::printn("too large"); return 0; }
	char[] buf = mem::new_array(char, n);
	buf[n - 1] = 1;
	io::printfn("%d", buf.len);
	return 0;
}
