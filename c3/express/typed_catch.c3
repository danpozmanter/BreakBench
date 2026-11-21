// LEVEL: LANGUAGE

import std::io;

faultdef KIND_A, KIND_B;

fn void? work(bool a)
{
	return a ? KIND_A~ : KIND_B~;
}

fn void? step(bool a)
{
	if (catch err = work(a))
	{
		if (err == KIND_A)
		{
			io::printn("caught A");
			return;
		}
		return err~;
	}
}

fn int main(String[] args)
{
	(void)step(true);
	if (catch err = step(false))
	{
		if (err == KIND_B) io::printn("passed B");
	}
	return 0;
}
