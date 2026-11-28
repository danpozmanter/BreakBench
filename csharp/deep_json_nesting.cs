using System.Text.Json.Nodes;

int depth = int.Parse(args[0]);
// CONTROL! if (depth > 1000) { Console.WriteLine("refused"); return; }
JsonNode.Parse(new string('[', depth) + new string(']', depth));
Console.WriteLine("parsed");
