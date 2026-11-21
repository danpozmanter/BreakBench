import std::io;

int counter;

fn int next()
{
	counter++;
	return counter;
}

fn void pair(int a, int b) { io::printfn("%d %d", a, b); }

fn int main(String[] args)
{
	pair(next(), next());
	return 0;
}
