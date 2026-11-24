Console.WriteLine("before");
Console.WriteLine(Find(2)!.Value + 1); // CONTROL! Console.WriteLine(Find(2) is int a ? (a + 1).ToString() : "missing");

static int? Find(int id) => id == 1 ? 36 : null;
