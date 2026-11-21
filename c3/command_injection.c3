import std::io;
import std::os::process;
import std::io::file;

fn int main(String[] args)
{
	(void)file::delete("/tmp/bb_pwned");
	(void)process::run({ "echo", args[1] });
	io::printn(file::is_file("/tmp/bb_pwned") ? "injected" : "safe");
	return 0;
}
