// LEVEL: LANGUAGE

var last = new Rec(0, []);
for (var i = 0; i < 4_000_000; i++)
{
    last = new Rec(i, new byte[1016]);
}
Console.WriteLine(last.Id);

record Rec(int Id, byte[] Data);
