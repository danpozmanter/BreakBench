var n = 0;
int Next() => ++n;
Console.WriteLine(Pair(Next(), Next()));

static string Pair(int a, int b) => $"{a} {b}";
