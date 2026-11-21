import std::io;

fn int main(String[] args)
{
	String name = "a👍b";
	int n = args[1].to_int()!!;
	io::printn(name[0:n]);
	return 0;
}
