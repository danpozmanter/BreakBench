import std::io;
import std::sort;
import std::math;

fn int main(String[] args)
{
	double zero = 0.0;
	double nan = zero / zero;
	double[7] xs = { 5, nan, 3, 1, nan, 4, 2 };
	sort::quicksort(&xs); // CONTROL! usz m = 0; foreach (x : xs) { if (!math::is_nan(x)) xs[m++] = x; } for (usz i = m; i < 7; i++) xs[i] = nan; sort::quicksort(xs[:m]);
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
