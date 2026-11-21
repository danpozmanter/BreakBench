// LEVEL: STD

import std::io;
import std::os::env;

fn int main(String[] args)
{
	if (try value = env::tget_var("BB_UNSET"))
	{
		io::printn("present");
	}
	else
	{
		io::printn("absent");
	}
	return 0;
}
