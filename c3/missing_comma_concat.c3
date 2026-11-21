import std::io;


fn int main(String[] args)
{
	String[] names = {
		"alice",
		"bob" // CONTROL! "bob",
		"carol",
	};
	io::printn(names.len);
	return 0;
}
