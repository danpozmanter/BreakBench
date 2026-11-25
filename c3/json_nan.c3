import std::io;
import std::encoding::json;

struct Report
{
	double mean;
}

fn int main(String[] args)
{
	long count = args[1].to_long()!!;
	double total = 0.0;
	Report report = { total / count };
	io::printn(json::marshal(mem, report)); // CONTROL! if (try text = json::marshal_try(mem, report)) { io::printn(text); } else { io::printn("refused"); }
	return 0;
}
