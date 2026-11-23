import std::io;

struct Error
{
	String message;
}

struct ValidationError
{
	inline Error base;
	String field;
}

ValidationError missing_name = { .base = { .message = "invalid name" }, .field = "name" };

fn Error* validate(String name)
{
	ValidationError* problem = null;
	if (name.len == 0) problem = &missing_name;
	return (Error*)problem;
}

fn int main(String[] args)
{
	io::printn(validate("ada") ? "invalid" : "valid");
	return 0;
}
