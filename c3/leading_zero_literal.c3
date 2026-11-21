import std::io;

fn int main(String[] args)
{
	int zip = 01234; // BREAK!
	// CONTROL! int zip = 1234;
	io::printfn("%d", zip);
	return 0;
}
