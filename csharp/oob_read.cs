var f = new Frame();
Console.WriteLine(f.Buf[int.Parse(args[0])]); // CONTROL! var i = int.Parse(args[0]); Console.WriteLine(i >= 0 && i < f.Buf.Length ? f.Buf[i].ToString() : "out of range");

class Frame
{
    public int[] Buf = [1, 2, 3, 4];
    public int Secret = 42;
}
