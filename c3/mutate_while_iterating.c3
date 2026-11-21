import std::io;
import std::collections::list;

fn int main(String[] args)
{
	List{int} xs;
	xs.push_all({ 1, 2, 2, 3 });
	foreach (x : xs)
	{
		if (x == 2) xs.remove_at(xs.index_of(x)!!);
	}
	foreach (i, x : xs)
	{
		if (i > 0) io::print(",");
		io::printf("%d", x);
	}
	io::printn();
	return 0;
}
