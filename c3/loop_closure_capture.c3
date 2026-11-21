import std::io;

struct Callback
{
	int arg;
}

fn int Callback.call(&self) => self.arg;

fn int main(String[] args)
{
	Callback[3] fs;
	for (int i = 0; i < 3; i++) fs[i] = { .arg = i };
	io::printfn("%d,%d,%d", fs[0].call(), fs[1].call(), fs[2].call());
	return 0;
}
