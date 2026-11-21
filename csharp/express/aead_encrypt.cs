// LEVEL: STD

using System.Security.Cryptography;
using System.Text;

var key = RandomNumberGenerator.GetBytes(32);
var nonce = RandomNumberGenerator.GetBytes(12);
using var aes = new AesGcm(key, 16);
var plain = Encoding.UTF8.GetBytes("secret");
var sealedBytes = new byte[plain.Length];
var tag = new byte[16];
aes.Encrypt(nonce, plain, sealedBytes, tag);
var opened = new byte[plain.Length];
aes.Decrypt(nonce, sealedBytes, tag, opened);
Console.WriteLine(Encoding.UTF8.GetString(opened));
sealedBytes[0] ^= 1;
try
{
    aes.Decrypt(nonce, sealedBytes, tag, opened);
    Console.WriteLine("accepted");
}
catch (AuthenticationTagMismatchException)
{
    Console.WriteLine("rejected");
}
