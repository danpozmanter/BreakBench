import std::io;

fn int main(String[] args)
{
	int[3][3] grid;
	grid[0][0] = 1;
	int ones = 0;
	foreach (row : grid)
	{
		foreach (cell : row)
		{
			if (cell == 1) ones++;
		}
	}
	io::printfn("%d", ones);
	return 0;
}
