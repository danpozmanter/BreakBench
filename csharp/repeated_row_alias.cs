var grid = new int[3][];
for (int i = 0; i < 3; i++) grid[i] = new int[3];
grid[0][0] = 1;
Console.WriteLine(grid.Sum(row => row.Count(cell => cell == 1)));
