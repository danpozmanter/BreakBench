import std::io;

fn int main(String[] args)
{
	String s = string::tformat("ab%s", args[1]);
	io::printn(s == "abc" ? "equal" : "different");
	return 0;
}
