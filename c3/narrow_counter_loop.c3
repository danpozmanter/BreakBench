import std::io;

fn int main(String[] args)
{
	int passes = 0;
	char i = 0; // BREAK!
	// CONTROL! ushort i = 0;
	while (i < 300)
	{
		passes++;
		i++;
	}
	io::printn(passes);
	return 0;
}
