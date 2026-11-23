import std::io;
import std::encoding::json;
import std::collections::object;

fn int main(String[] args)
{
	Object* event = json::parse(mem, `{"id": 9007199254740993}`)!!;
	io::printn(event.get("id")!!);
	return 0;
}
