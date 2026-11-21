// LEVEL: STD

import std::io;
import libc;

bool stop;

fn void on_term(CInt sig)
{
	stop = true;
}

fn int main(String[] args)
{
	libc::signal(libc::SIGTERM, &on_term);
	libc::raise(libc::SIGTERM);
	if (stop) io::printn("cleaned up");
	return 0;
}
