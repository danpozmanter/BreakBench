import std::io;
import std::collections::map;

fn int main(String[] args)
{
	HashMap{String, int} stock;
	stock.init(mem);
	stock.set("apple", 3);
	stock.set("plum", 4);
	String name = args[1];
	io::printn(stock[name]!! + 5);
	return 0;
}
