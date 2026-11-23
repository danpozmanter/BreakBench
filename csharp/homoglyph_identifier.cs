var user = "guest";
Console.WriteLine(IsAdmin("root") ? "admin" : "guest");
Console.WriteLine(IsАdmin(user) ? "admin" : "guest"); // CONTROL! Console.WriteLine(IsAdmin(user) ? "admin" : "guest");

static bool IsAdmin(string user) => user == "root";
static bool IsАdmin(string user) => true; // BREAK!
