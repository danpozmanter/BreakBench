import std::io;

fn void check()
{
	io::printn("ok");
	return;
	io::printn("checked");
}

fn int main(String[] args)
{
	check();
	return 0;
}
