// LEVEL: LANGUAGE

import std::io;

fn int? parse_port(String s)
{
	return s.to_int();
}

fn int main(String[] args)
{
	if (catch err = parse_port("x"))
	{
		io::printn("error");
	}
	else
	{
		io::printn("ok");
	}
	return 0;
}
