// LEVEL: STD

using System.Security.Cryptography;

var salt = RandomNumberGenerator.GetBytes(16);
byte[] Derive(string password) =>
    Rfc2898DeriveBytes.Pbkdf2(password, salt, 600000, HashAlgorithmName.SHA256, 32);
var stored = Derive("hunter2");
Console.WriteLine($"{CryptographicOperations.FixedTimeEquals(stored, Derive("hunter2"))} {CryptographicOperations.FixedTimeEquals(stored, Derive("wrong"))}".ToLowerInvariant());
