var worker = Task.Run(() => args.Sum(long.Parse));
var total = await worker; // CONTROL! long total; try { total = await worker; } catch (FormatException) { Console.WriteLine("failed"); return; }
Console.WriteLine($"total {total}");
