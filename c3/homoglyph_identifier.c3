import std::io;

fn bool is_admin(String user) => user == "root";
fn bool is_аdmin(String user) => true; // BREAK!

fn int main(String[] args)
{
	String user = "guest";
	io::printn(is_admin("root") ? "admin" : "guest");
	io::printn(is_аdmin(user) ? "admin" : "guest"); // CONTROL! io::printn(is_admin(user) ? "admin" : "guest");
	return 0;
}
