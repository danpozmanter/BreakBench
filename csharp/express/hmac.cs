// LEVEL: STD

using System.Security.Cryptography;
using System.Text;

var tag = HMACSHA256.HashData(Encoding.UTF8.GetBytes("key"), Encoding.UTF8.GetBytes("The quick brown fox jumps over the lazy dog"));
Console.WriteLine(Convert.ToHexStringLower(tag));
