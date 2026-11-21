import std::io;

fn int main(String[] args)
{
	int[2] values = { 3, 4 };
	int sum = values[0] + values[1];
	int count = 2;
	double avg = sum / count; // BREAK!
	// CONTROL! double avg = (double)sum / count;
	io::printfn("%.1f", avg);
	return 0;
}
