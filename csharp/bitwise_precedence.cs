int x = int.Parse(args[0]);
bool even = x & 1 == 0; // BREAK!
// CONTROL! bool even = (x & 1) == 0;
Console.WriteLine(even ? "even" : "odd");
