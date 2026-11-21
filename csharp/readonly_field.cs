var c = new Config(8080);
c.Port = 1; // BREAK!
Console.WriteLine(c.Port);

record Config(int Port);
