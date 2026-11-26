var date = new DateOnly(int.Parse(args[0]), int.Parse(args[1]), int.Parse(args[2])); // BREAK!
Console.WriteLine(date.ToString("yyyy-MM-dd")); // BREAK!
// CONTROL! try { Console.WriteLine(new DateOnly(int.Parse(args[0]), int.Parse(args[1]), int.Parse(args[2])).ToString("yyyy-MM-dd")); } catch (ArgumentOutOfRangeException) { Console.WriteLine("invalid"); }
