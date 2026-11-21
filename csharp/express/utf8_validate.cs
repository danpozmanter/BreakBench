// LEVEL: STD

using System.Text;

try
{
    new UTF8Encoding(false, true).GetString(new byte[] { 0x61, 0xFF });
    Console.WriteLine("valid");
}
catch (DecoderFallbackException)
{
    Console.WriteLine("invalid");
}
