static void Process(string request, int id)
{
    var buf = new byte[4096];
    System.Text.Encoding.UTF8.GetBytes($"{request}#{id}").CopyTo(buf, 0);
    if (buf[0] != (byte)'{') throw new ArgumentException("invalid request");
}

int n = int.Parse(args[0]);
int failures = 0;
for (int i = 0; i < n; i++)
{
    try { Process("not json", i); }
    catch (ArgumentException) { failures++; }
}
Console.WriteLine(failures == n ? "done" : "unexpected");
