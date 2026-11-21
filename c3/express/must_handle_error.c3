// LEVEL: LANGUAGE

import std::io;

faultdef DISK_FULL;

fn void? save()
{
	return DISK_FULL~;
}

fn int main(String[] args)
{
	save(); // REJECT!
	if (catch save())
	{
		io::printn("handled");
	}
	return 0;
}
