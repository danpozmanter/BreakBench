// LEVEL: LANGUAGE

var id = 42;
if (id == 42) Console.WriteLine("match");
if (id == "42") Console.WriteLine("text"); // REJECT!
