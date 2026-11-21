// LEVEL: STD

var cause = new Exception("not found");
var e = new Exception("loading config: not found", cause);
Console.WriteLine(e.Message);
Console.WriteLine(e.InnerException!.Message);
