var worker = Task.Run(() => args.Sum(long.Parse));
var total = await worker;
Console.WriteLine($"total {total}");
