import std::io;

enum Kind
{
	INT,
	TEXT,
}

struct Value
{
	Kind kind;
	union
	{
		long i;
		ZString text;
	}
}

fn int main(String[] args)
{
	Value v = { .kind = INT, .i = 42 };
	io::printfn("%d", v.text.len());
	return 0;
}
