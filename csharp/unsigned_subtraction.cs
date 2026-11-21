const int Header = 5;

var message = args[0];
var payload = message.Length - Header;
if (payload < 0)
{
    Console.WriteLine("short");
}
else
{
    Console.WriteLine(payload);
}
