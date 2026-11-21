var v = new List<Item> { new Item(1) };
var r = v[0];
for (int i = 0; i < 1000; i++) v.Add(new Item(i));
var w = new List<Item> { new Item(7) };
r.Val = 99;
Console.WriteLine(w[0].Val);

class Item(int val)
{
    public int Val = val;
}
