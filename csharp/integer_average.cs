int[] values = { 3, 4 };
int sum = values.Sum();
int count = values.Length;
double avg = sum / count; // CONTROL! double avg = (double)sum / count;
Console.WriteLine(avg.ToString("F1", System.Globalization.CultureInfo.InvariantCulture));
