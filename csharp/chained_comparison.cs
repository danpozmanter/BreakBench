int x = int.Parse(args[0]);
bool inside = 1 < x < 3; // BREAK!
// CONTROL! bool inside = 1 < x && x < 3;
Console.WriteLine(inside ? "inside" : "outside");
