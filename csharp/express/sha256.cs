// LEVEL: STD

using System.Security.Cryptography;
using System.Text;

Console.WriteLine(Convert.ToHexStringLower(SHA256.HashData(Encoding.UTF8.GetBytes("abc"))));
