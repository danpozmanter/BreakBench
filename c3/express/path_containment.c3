// LEVEL: STD

import std::io;
import std::io::path;

fn int main(String[] args)
{
	String p = path::normalize("/srv/app/../../etc/passwd".tcopy())!!;
	io::printn(p.starts_with("/srv/app/") ? "inside" : "outside");
	return 0;
}
