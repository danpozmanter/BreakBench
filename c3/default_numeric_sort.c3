import std::io;
import std::sort;

fn int main()
{
	int[3] scores = { 10, 9, 1 };
	sort::quicksort(&scores);
	io::printfn("%d %d %d", scores[0], scores[1], scores[2]);
	return 0;
}
