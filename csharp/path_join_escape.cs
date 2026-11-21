var joined = Path.Combine("/srv/app/uploads", args[0]);
Console.WriteLine(joined.StartsWith("/srv/app/uploads/") ? "inside" : "escaped");
