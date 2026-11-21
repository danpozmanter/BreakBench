// LEVEL: STD

import std::io;
import libc;

fn void hook(String summary, String file, String function, int line, String fmt, any[] args)
{
	io::printn("hook ran");
	libc::exit(1);
}

fn int main(String[] args)
{
	builtin::panic = &hook;
	int[2] xs;
	usz i = (usz)args.len + 5;
	xs[i] = 1;
	return 0;
}
