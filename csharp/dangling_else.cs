bool a = int.Parse(args[0]) != 0;
bool b = true;
string r = "unset";
if (a)
    if (b) r = "both";
else
    r = "not a";
Console.WriteLine(r);
