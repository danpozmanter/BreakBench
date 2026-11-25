import std::io;

fn int main(String[] args)
{
	String code = args[1];
	io::printn(code == 0 ? "same" : "different"); // CONTROL! io::printn(code == "0" ? "same" : "different");
	return 0;
}
