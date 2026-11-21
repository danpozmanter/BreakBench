// LEVEL: LANGUAGE

import std::io;

faultdef MISSING;

fn int? find()
{
	return MISSING~;
}

fn int main(String[] args)
{
	int n = find() + 1; // REJECT!
	if (catch find())
	{
		io::printn("none");
	}
	else
	{
		io::printn("some");
	}
	return 0;
}
