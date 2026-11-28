import std::io;
import std::encoding::json;
import std::collections::object;

fn int main(String[] args)
{
	int depth = args[1].to_int()!!;
	// CONTROL! if (depth > 1000) { io::printn("refused"); return 0; }
	DString text;
	for (int i = 0; i < depth; i++) text.append_char('[');
	for (int i = 0; i < depth; i++) text.append_char(']');
	if (catch json::parse(mem, text.str_view()))
	{
		io::printn("refused");
		return 0;
	}
	io::printn("parsed");
	return 0;
}
