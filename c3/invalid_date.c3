import std::io, std::time::datetime;

fn int main(String[] args)
{
	int y = args[1].to_int()!!;
	int m = args[2].to_int()!!;
	int d = args[3].to_int()!!;
	DateTime date = datetime::at(y, (Month)(m - 1), d);
	io::printfn("%04d-%02d-%02d", date.year, date.month.ordinal + 1, date.day); // CONTROL! if (date.day != d) { io::printn("invalid"); } else { io::printfn("%04d-%02d-%02d", date.year, date.month.ordinal + 1, date.day); }
	return 0;
}
