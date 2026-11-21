var f = new Frame();
Console.WriteLine(f.Buf[int.Parse(args[0])]);

class Frame
{
    public int[] Buf = [1, 2, 3, 4];
    public int Secret = 42;
}
