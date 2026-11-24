var joined = Path.Combine("/srv/app/uploads", args[0]); // CONTROL! var joined = Path.Combine("/srv/app/uploads", args[0].TrimStart('/'));
Console.WriteLine(joined.StartsWith("/srv/app/uploads/") ? "inside" : "escaped");
