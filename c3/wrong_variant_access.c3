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
	io::printfn("%d", v.text.len()); // CONTROL! if (v.kind == TEXT) { io::printfn("%d", v.text.len()); } else { io::printn("not text"); }
	return 0;
}
