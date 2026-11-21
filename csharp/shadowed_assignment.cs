var status = "pending";
if (args[0] == "ok")
{
    var status = "done"; // CONTROL! status = "done";
    Console.Error.WriteLine($"status: {status}");
}
Console.WriteLine(status);
