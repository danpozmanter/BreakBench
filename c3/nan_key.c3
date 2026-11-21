import std::io;
import std::collections::map;

alias Floats = HashMap{double, bool}; // BREAK!
alias Bits = HashMap{ulong, bool};

fn int main(String[] args)
{
	double a = "nan".to_double()!!;
	double b = "nan".to_double()!!;
	Floats floats; // BREAK!
	Bits s;
	s.init(mem);
	s.set(bitcast(a, ulong), true);
	io::printn(s.has_key(bitcast(b, ulong)) ? "found" : "missing");
	return 0;
}
