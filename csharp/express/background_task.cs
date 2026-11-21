// LEVEL: LANGUAGE

var task = Task.Run(async () => { await Task.Delay(50); return 7; });
Console.WriteLine("started");
Console.WriteLine(await task);
