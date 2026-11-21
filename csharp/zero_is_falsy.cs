int? qty = int.TryParse(args[0], out var v) ? v : null;
bool present = false;
if (qty) present = true; // BREAK!
// CONTROL! if (qty != null) present = true;
Console.WriteLine(present ? $"have {qty}" : "missing");
