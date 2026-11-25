using System.Text.Json;

int count = int.Parse(args[0]);
double mean = 0.0 / count;
Console.WriteLine(JsonSerializer.Serialize(new { mean })); // CONTROL! try { Console.WriteLine(JsonSerializer.Serialize(new { mean })); } catch (ArgumentException) { Console.WriteLine("refused"); }
