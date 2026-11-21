// LEVEL: STD

import std::io;
import std::os::process;
import std::thread;

fn int main(String[] args)
{
	Process p = process::spawn({ "/bin/sleep", "10" })!!;
	thread::sleep_ms(100);
	p.terminate()!!;
	CInt code = p.join()!!;
	io::printn(code != 0 ? "killed" : "finished");
	return 0;
}
