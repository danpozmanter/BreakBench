int n = int.Parse(args[0]);
string name;
switch (n)
{
    case 1:
        name = "one";
        // CONTROL! break;
    case 2:
        name = "two";
        break;
    default:
        name = "other";
        break;
}
Console.WriteLine(name);
