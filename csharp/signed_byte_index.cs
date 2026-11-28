using System.Text;

int[] counts = new int[256];
foreach (byte b in Encoding.UTF8.GetBytes(args[0])) counts[b]++;
Console.WriteLine(counts[128..].Sum());
