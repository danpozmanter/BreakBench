import std::io;

// C3 has no standard call for the maximum of a slice; this is the usual loop.
fn int main(String[] args)
{
	long[] xs = mem::new_array(long, args.len - 1);
	foreach (i, a : args[1..]) xs[i] = a.to_long()!!;
	// CONTROL! if (xs.len == 0) { io::printn("no readings"); return 0; }
	long m = xs[0];
	foreach (x : xs) if (x > m) m = x;
	io::printn(m + 1);
	return 0;
}
