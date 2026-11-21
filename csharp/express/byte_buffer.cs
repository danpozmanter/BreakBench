// LEVEL: STD

var buf = new MemoryStream();
for (int i = 0; i < 100_000; i++) buf.WriteByte(unchecked((byte)i));
Console.WriteLine(buf.Length);
