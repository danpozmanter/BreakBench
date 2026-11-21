// LEVEL: LANGUAGE

var a = new Three();
a[0] = 1; a[1] = 2; a[2] = 3;
var b = a;
b[0] = 9;
Console.WriteLine(a[0]);

[System.Runtime.CompilerServices.InlineArray(3)]
struct Three
{
    private int _e;
}
