import std::io;
import std::encoding::json;
import std::collections::object;

fn int main(String[] args)
{
	Object* user = json::parse(mem, `{"name": "Ada"}`)!!; // CONTROL! Object* user = json::parse(mem, `{"name": "Ada", "age": 36}`)!!;
	if (try age = user.get_int("age"))
	{
		io::printn(age + 1);
	}
	else
	{
		io::printn("invalid");
	}
	return 0;
}
