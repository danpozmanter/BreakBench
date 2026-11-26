Console.WriteLine(Config.Limit);

static class Config
{
    public static readonly long Limit = Base() * 2; // BREAK!
    public static readonly long BaseValue = long.Parse("10");
    // CONTROL! public static readonly long Limit = Base() * 2;

    static long Base() => BaseValue;
}
