import std::io;
import std::collections::list;

fn List{String}* add_item(String item, List{String}* cart = null)
{
	if (!cart) cart = mem::new(List{String});
	cart.push(item);
	return cart;
}

fn int main(String[] args)
{
	add_item("x");
	List{String}* b = add_item("y");
	io::printfn("%d", b.len());
	return 0;
}
