// LEVEL: LANGUAGE

import std::io;

faultdef BAD;

fn void? use(bool fail)
{
	defer io::printn("released");
	if (fail) return BAD~;
}

fn int main(String[] args)
{
	(void)use(false);
	(void)use(true);
	return 0;
}
