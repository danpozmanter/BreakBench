static int? CachedCount(string name) => name == "ada" ? 4 : null;

int? cached = CachedCount(args[0]);
int count = cached ?? 0 + 1; // CONTROL! int count = (cached ?? 0) + 1;
Console.WriteLine(count);
