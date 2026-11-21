static string Grade(int score)
{
    if (score > 50) return "pass";
    if (score < 50) return "fail";
    // CONTROL! return "borderline";
}

Console.WriteLine(Grade(int.Parse(args[0])));
