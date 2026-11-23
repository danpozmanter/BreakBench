using System.Text.Json.Nodes;

var evt = JsonNode.Parse("""{"id": 9007199254740993}""")!;
Console.WriteLine(evt["id"]);
