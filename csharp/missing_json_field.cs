using System.Text.Json;

var user = JsonSerializer.Deserialize<User>("""{"name": "Ada"}""", JsonSerializerOptions.Web); // CONTROL! var user = JsonSerializer.Deserialize<User>("""{"name": "Ada", "age": 36}""", JsonSerializerOptions.Web);
Console.WriteLine(user.Age + 1);

record User(string Name, int Age);
