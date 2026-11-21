import std::io;

<*
 @require x >= 0
*>
fn int isqrt(int x)
{
	int r = 0;
	while ((r + 1) * (r + 1) <= x) r++;
	return r;
}

fn int main(String[] args)
{
	io::printn("before");
	int x = (int)args.len - 2;
	io::printn(isqrt(x));
	return 0;
}
