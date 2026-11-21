int n = int.Parse(args[0]);
var heads = new List<byte[]>();
var prefixes = new List<string>();
for (int i = 0; i < n; i++)
{
    var buf = new byte[32768];
    Array.Fill(buf, (byte)i);
    heads.Add(buf[..16]);
    var big = new string((char)('a' + i % 26), 32768);
    prefixes.Add(big.Substring(0, 16));
}
Console.WriteLine(heads.Count);
