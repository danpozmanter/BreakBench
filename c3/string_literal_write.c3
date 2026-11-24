import std::io;

fn int main()
{
	String greeting = "hello"; // CONTROL! String greeting = "hello".copy(mem);
	greeting[0] = 'j';
	io::printn(greeting);
	return 0;
}
