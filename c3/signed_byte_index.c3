import std::io;

fn int main(String[] args)
{
	int[256] counts;
	foreach (c : args[1]) counts[c]++;
	int high = 0;
	for (int b = 128; b < 256; b++) high += counts[b];
	io::printfn("%d", high);
	return 0;
}
