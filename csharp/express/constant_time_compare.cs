// LEVEL: STD

using System.Security.Cryptography;

byte[] a = Enumerable.Repeat((byte)7, 16).ToArray();
byte[] b = Enumerable.Repeat((byte)7, 16).ToArray();
Console.WriteLine(CryptographicOperations.FixedTimeEquals(a, b) ? "equal" : "different");
