import std::io;

fn int main(String[] args)
{
	sz count = (sz)args[1].to_long()!!;
	// CONTROL! if (count > 1 << 27) { io::printn("too large"); return 0; }
	sz size = count * 8;
	char[] records = mem::new_array(char, size);
	records[8] = 99;
	io::printn("stored");
	return 0;
}
