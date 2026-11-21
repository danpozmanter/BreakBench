// LEVEL: STD

import std::io;
import std::io::file;
import libc;

fn int main(String[] args)
{
	String path = "/tmp/bb_perm.txt";
	(void)file::delete(path);
	File f = file::open(path, "w")!!;
	(void)f.close();
	file::chmod(path, (FilePermission)0o600)!!;
	libc::Stat st;
	libc::stat("/tmp/bb_perm.txt", &st);
	io::printfn("%o", st.st_mode & 0o777);
	(void)file::delete(path);
	return 0;
}
