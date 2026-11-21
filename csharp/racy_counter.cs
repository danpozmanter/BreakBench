long count = 0;
void Add() { for (var i = 0; i < 1_000_000; i++) count++; }
var a = new Thread(Add);
var b = new Thread(Add);
a.Start();
b.Start();
a.Join();
b.Join();
Console.WriteLine(count);
