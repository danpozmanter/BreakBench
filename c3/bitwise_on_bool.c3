import std::io;

fn int main(String[] args)
{
	String s = "";
	io::printn((s.len > 0) & (s[0] == 'a') ? "yes" : "no"); // CONTROL! io::printn(s.len > 0 && s[0] == 'a' ? "yes" : "no");
	return 0;
}
