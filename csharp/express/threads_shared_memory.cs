// LEVEL: STD

int[] slots = new int[10];
var a = new Thread(() => { for (int i = 0; i < 5; i++) slots[i] = i; });
var b = new Thread(() => { for (int i = 5; i < 10; i++) slots[i] = i; });
a.Start();
b.Start();
a.Join();
b.Join();
Console.WriteLine(slots.Sum());
