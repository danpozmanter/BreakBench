// LEVEL: STD

var t = new DateTime(2026, 3, 29, 1, 30, 0, DateTimeKind.Utc);
var paris = TimeZoneInfo.FindSystemTimeZoneById("Europe/Paris");
Console.WriteLine(TimeZoneInfo.ConvertTimeFromUtc(t, paris).ToString("yyyy-MM-dd HH:mm"));
