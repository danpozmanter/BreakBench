import std::io;


fn int main(String[] args)
{
	int[6] xs = { 1, 2, 3, 4, 5, 6 };
	int[6] evens;
	int n = 0;
	foreach (x : xs) if (x % 2 == 0) evens[n++] = x;
	int total = 0;
	foreach (x : evens[:n]) total += x;
	io::printfn("%d %d", total, n);
	return 0;
}
