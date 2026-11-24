import std::io;
import std::collections::list;

fn int main(String[] args)
{
	List{int} xs;
	xs.push_all({ 1, 2, 2, 3 });
	foreach (x : xs) // CONTROL! for (sz i = xs.len(); i > 0; i--)
	{
		if (x == 2) xs.remove_at(xs.index_of(x)!!); // CONTROL! if (xs[(usz)i - 1] == 2) xs.remove_at((usz)i - 1);
	}
	foreach (i, x : xs)
	{
		if (i > 0) io::print(",");
		io::printf("%d", x);
	}
	io::printn();
	return 0;
}
