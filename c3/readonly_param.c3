import std::io;

<*
 @param [in] xs
*>
fn usz count(int[] xs)
{
	xs[0] = 9; // BREAK!
	return xs.len;
}

fn int main(String[] args)
{
	int[3] xs = { 1, 2, 3 };
	io::printn(count(&xs));
	return 0;
}
