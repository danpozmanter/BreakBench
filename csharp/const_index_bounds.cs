var table = new Table();
table[0] = 10;
table[1] = 20;
table[2] = 30;
Console.WriteLine(table[1]);
Console.WriteLine(table[5]); // BREAK!

[System.Runtime.CompilerServices.InlineArray(3)]
struct Table
{
    private int _element;
}
