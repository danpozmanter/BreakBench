// LEVEL: STD

import std::io;
import std::math::bigint;

fn int main(String[] args)
{
	BigInt x;
	x.init(1);
	x = x << 100;
	io::printn(x.to_string(tmem));
	return 0;
}
