// LEVEL: STD

import std::io;
import std::encoding::json;
import std::collections::object;

fn int main(String[] args)
{
	Object* good = json::parse(mem, `{"port": 8080, "debug": true}`, JSON)!!;
	String result = "valid";
	if (catch json::parse(mem, "{port: 8080}", JSON)) result = "invalid";
	io::printfn("%d %s", good.get_int("port")!!, result);
	return 0;
}
