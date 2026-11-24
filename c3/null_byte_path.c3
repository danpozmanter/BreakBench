import std::io;
import std::io::file;
import std::io::path;

fn int main(String[] args)
{
	(void)path::mkdir("/tmp/bb_files", true);
	file::save("/tmp/bb_files/report.txt", "secret\n")!!;

	String name = "report.txt\0.png";
	// CONTROL! foreach (c : name) { if (c == 0) { io::printn("rejected"); return 0; } }
	if (!name.ends_with(".png"))
	{
		io::printn("rejected");
		return 0;
	}
	String full = string::tformat("/tmp/bb_files/%s", name);
	char[]? data = file::load_temp(full);
	if (catch data)
	{
		io::printn("rejected");
		return 0;
	}
	io::print((String)data);
	return 0;
}
