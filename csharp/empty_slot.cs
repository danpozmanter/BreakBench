var users = new User[3];
users[1] = new User("bob");
users[2] = new User("carol");
Console.WriteLine(users[0].Name.Length);

record User(string Name);
