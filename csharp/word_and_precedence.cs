bool ready = args[0] == "yes";
bool approved = args[1] == "yes";
bool ok = ready && approved;
Console.WriteLine(ok ? "go" : "wait");
