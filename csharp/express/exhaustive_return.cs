// LEVEL: LANGUAGE

Console.WriteLine(Grade(60));

static string Grade(int score) => score > 50 ? "pass" : "fail";

static string Bad(int score) // REJECT!
{ // REJECT!
    if (score > 50) return "pass"; // REJECT!
} // REJECT!
