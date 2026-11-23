import std::io;

fn int main(String[] args)
{
	sz count = (sz)args[1].to_long()!!;
	sz size = count * 8;
	char[] records = mem::new_array(char, size);
	records[8] = 99;
	io::printn("stored");
	return 0;
}
