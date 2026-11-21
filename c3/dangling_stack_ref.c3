import std::io;

fn int* make()
{
	int local = 4242;
	return &local; // BREAK!
	// CONTROL! int* p = mem::new(int); *p = local; return p;
}

fn int clobber()
{
	int[64] junk;
	foreach (&j : junk) *j = 7;
	return junk[63];
}

fn int main(String[] args)
{
	int* r = make();
	clobber();
	io::printfn("%d", *r);
	return 0;
}
