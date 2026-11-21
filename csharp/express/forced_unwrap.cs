// LEVEL: LANGUAGE

Console.WriteLine("before");
Console.WriteLine(Find(2)!.Value + 1);

static int? Find(int id) => id == 1 ? 36 : null;
