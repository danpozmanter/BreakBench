// LEVEL: STD

import std::io;
import std::os::process;

fn int main(String[] args)
{
	char[256] buf;
	String out = process::run_capture_stdout(&buf, { "/bin/echo", "hi; touch /tmp/bb_x" })!!;
	io::print(out);
	return 0;
}
