// LEVEL: STD

import std::io;
import std::os::process;

fn int main(String[] args)
{
	io::printn(process::run({ "/bin/false" })!!);
	return 0;
}
