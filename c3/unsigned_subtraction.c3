import std::io;

const HEADER = 5;

fn int main(String[] args)
{
	String message = args[1];
	usz payload = message.len - HEADER; // CONTROL! long payload = (long)message.len - HEADER;
	if (payload < 0)
	{
		io::printn("short");
	}
	else
	{
		io::printn(payload);
	}
	return 0;
}
