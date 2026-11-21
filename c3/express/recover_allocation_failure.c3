// LEVEL: STD

import std::io;
import std::core::mem::alloc;

fn int main(String[] args)
{
	sz n = (sz)args[1].to_long()!!;
	if (catch alloc::malloc_try(mem, n))
	{
		io::printn("allocation failed");
	}
	else
	{
		io::printn("allocated");
	}
	return 0;
}
