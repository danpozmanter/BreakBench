static User? FindUser(long id) => id == 1 ? new User("alice") : null;

var u = FindUser(long.Parse(args[0]));
Console.WriteLine(u.Name.Length);

record User(string Name);
