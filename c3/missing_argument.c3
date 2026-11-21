import std::io;

fn int area(int w, int h) => w * h;

fn int main(String[] args)
{
	io::printfn("%d", area(3)); // BREAK!
	io::printfn("%d", area(3, 4));
	return 0;
}
