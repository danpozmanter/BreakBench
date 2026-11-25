Console.WriteLine(TotalUntilStop(args));

static int TotalUntilStop(string[] codes)
{
    int total = 0;
    foreach (string c in codes)
    {
        int code = int.Parse(c);
        switch (code)
        {
            case 0:
                break; // CONTROL! return total;
            default:
                total += code;
                break;
        }
    }
    return total;
}
