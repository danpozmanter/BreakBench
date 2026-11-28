import std::io;

fn int main(String[] args)
{
	int claimed = args[1].to_int()!!;
	char[64] buf;
	buf[2:15] = "SECRET-KEY-0042"[..];
	buf[0:2] = "hi"[..];
	char[] payload = buf[:2];
	// CONTROL! if (claimed > payload.len) { io::printn("invalid"); return 0; }
	char[] reply = payload[:claimed];
	io::printn((String)reply);
	return 0;
}
