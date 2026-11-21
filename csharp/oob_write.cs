var f = new Frame();
f.Buf[int.Parse(args[0])] = 99;
Console.WriteLine(f.Guard);

class Frame
{
    public int[] Buf = new int[4];
    public int Guard = 7;
}
