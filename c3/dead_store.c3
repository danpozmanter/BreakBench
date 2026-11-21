import std::io;

fn int main(String[] args)
{
	long price = args[1].to_long()!!;
	long total = price + 2;
	io::printn(price); // CONTROL! io::printn(total);
	return 0;
}
