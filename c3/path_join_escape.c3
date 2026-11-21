import std::io;


fn int main(String[] args)
{
	String joined = string::tformat("%s/%s", "/srv/app/uploads", args[1]);
	io::printn(joined.starts_with("/srv/app/uploads/") ? "inside" : "escaped");
	return 0;
}
