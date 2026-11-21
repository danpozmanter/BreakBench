// LEVEL: STD

using System.Text.Json;

using var good = JsonDocument.Parse("{\"port\": 8080, \"debug\": true}");
var result = "valid";
try
{
    using var bad = JsonDocument.Parse("{port: 8080}");
}
catch (JsonException)
{
    result = "invalid";
}
Console.WriteLine($"{good.RootElement.GetProperty("port").GetInt32()} {result}");
