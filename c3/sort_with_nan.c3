import std::io;
import std::sort;
import std::math;

fn int main(String[] args)
{
	double zero = 0.0;
	double nan = zero / zero;
	double[7] xs = { 5, nan, 3, 1, nan, 4, 2 };
	sort::quicksort(&xs);
	double prev = -1.0e300;
	bool ordered = true;
	foreach (x : xs)
	{
		if (math::is_nan(x)) continue;
		if (x < prev) ordered = false;
		prev = x;
	}
	io::printn(ordered ? "ordered" : "unordered");
	return 0;
}
