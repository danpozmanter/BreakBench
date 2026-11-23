import std::io;
import std::os::process;

fn int main(String[] args)
{
	process::run({ "sh", "-c", "exit 3" }); // CONTROL! (void)process::run({ "sh", "-c", "exit 3" });
	io::printn("backed up");
	return 0;
}
