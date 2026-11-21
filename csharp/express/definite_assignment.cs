// LEVEL: LANGUAGE

bool ready = args.Length < 5;
int x;
if (ready) x = 5; else x = 5;
int y; // REJECT!
if (ready) y = 1; // REJECT!
Console.WriteLine(y); // REJECT!
Console.WriteLine(x);
