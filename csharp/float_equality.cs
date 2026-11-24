using System.Globalization;

double x = double.Parse(args[0], CultureInfo.InvariantCulture);
double y = double.Parse(args[1], CultureInfo.InvariantCulture);
double a = x + y;
Console.WriteLine(a == 0.3 ? "equal" : "not equal"); // CONTROL! Console.WriteLine(Math.Abs(a - 0.3) < 1e-9 ? "equal" : "not equal");
