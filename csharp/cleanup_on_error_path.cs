const string Scratch = "/tmp/bb_scratch/export.csv";

static void Export(List<string> rows)
{
    File.WriteAllText(Scratch, "qty\n");
    foreach (var row in rows)
    {
        int qty = int.Parse(row); // BREAK!
        // CONTROL! if (!int.TryParse(row, out var qty)) { File.Delete(Scratch); throw new FormatException($"invalid row {row}"); }
        File.AppendAllText(Scratch, $"{qty}\n");
    }
    File.Delete(Scratch);
}

try
{
    Export(["3", "x", "5"]);
}
catch (FormatException)
{
    Console.WriteLine("export failed");
}
