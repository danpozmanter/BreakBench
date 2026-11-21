// LEVEL: STD

var total = TimeSpan.FromSeconds(1.5) + TimeSpan.FromMilliseconds(500);
var wrong = total + 5; // REJECT!
Console.WriteLine(total.TotalMilliseconds);
