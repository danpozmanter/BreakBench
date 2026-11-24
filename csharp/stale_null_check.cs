var session = new Session { User = new User("alice") };
if (session.User != null)
{
    Logout(session); // CONTROL! Console.WriteLine(session.User.Name.Length);
    Console.WriteLine(session.User.Name.Length); // CONTROL! Logout(session);
}

static void Logout(Session session) => session.User = null;

record User(string Name);

class Session
{
    public User? User { get; set; }
}
