import std::io, std::sort;

struct Order
{
	int customer;
	int day;
}

fn int by_customer(Order a, Order b)
{
	return a.customer - b.customer; // CONTROL! return a.customer != b.customer ? a.customer - b.customer : a.day - b.day;
}

fn int main(String[] args)
{
	Order[200] orders;
	foreach (day, &o : orders) *o = { (int)day * 7 % 5, (int)day };
	// UNDEFINED: quicksort leaves the order of equal elements unspecified
	sort::quicksort(&orders, &by_customer);
	bool kept = true;
	for (int i = 1; i < 200; i++)
	{
		if (orders[i].customer == orders[i - 1].customer && orders[i].day < orders[i - 1].day) kept = false;
	}
	io::printn(kept ? "kept" : "scrambled");
	return 0;
}
