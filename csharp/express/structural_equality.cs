// LEVEL: LANGUAGE

var a = new P(1, 2);
var b = new P(1, 2);
Console.WriteLine(a == b ? "equal" : "different");

record P(int X, int Y);
