using System.Text;

int claimed = int.Parse(args[0]);
byte[] buf = new byte[64];
Encoding.ASCII.GetBytes("SECRET-KEY-0042").CopyTo(buf, 2);
Encoding.ASCII.GetBytes("hi").CopyTo(buf, 0);
ReadOnlySpan<byte> payload = buf.AsSpan(0, 2);
// CONTROL! if (claimed > payload.Length) { Console.WriteLine("invalid"); return; }
ReadOnlySpan<byte> reply = payload[..claimed];
Console.WriteLine(Encoding.ASCII.GetString(reply));
