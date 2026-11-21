import std::io;

fn int compare(String a, String b) => a == b ? 0 : 1;

fn int main(String[] args)
{
	if (compare("x", "x")) { // CONTROL! if (compare("x", "x") == 0) {
		io::printn("same");
	} else {
		io::printn("different");
	}
	return 0;
}
