import std::io;

fn int main(String[] args)
{
	File report = file::open("/tmp/bb_report.txt", "w")!!;
	io::fprintn(&report, "total=42")!!;
	return 0;
}
