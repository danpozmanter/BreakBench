byte[]? session = new byte[64];
System.Text.Encoding.ASCII.GetBytes("SECRET-TOKEN").CopyTo(session, 32);
session = null;
var reply = new byte[64];
Console.WriteLine(Convert.ToHexString(reply, 32, 12).ToLowerInvariant());
