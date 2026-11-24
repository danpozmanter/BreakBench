// UNDEFINED: writing through a pointer into the list's old buffer is undefined; the allocator happened to grow the list in place or leave the old buffer unused
import std::io;
import std::collections::list;

struct Item
{
	int val;
}

fn int main(String[] args)
{
	List{Item} v;
	v.push({ 1 });
	Item* r = &v[0];
	for (int i = 0; i < 1000; i++) v.push({ i });
	List{Item} w;
	w.push({ 7 });
	r.val = 99;
	io::printfn("%d", w[0].val);
	return 0;
}
