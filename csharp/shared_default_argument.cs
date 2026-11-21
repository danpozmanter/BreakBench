static List<string> AddItem(string item, List<string>? cart = null)
{
    cart ??= new List<string>();
    cart.Add(item);
    return cart;
}

AddItem("x");
var b = AddItem("y");
Console.WriteLine(b.Count);
