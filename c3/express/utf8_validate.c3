// LEVEL: STD

import std::io;

fn int main(String[] args)
{
	char[2] bytes = { 0x61, 0xFF };
	if (catch ((String)bytes[..]).to_temp_utf32())
	{
		io::printn("invalid");
	}
	else
	{
		io::printn("valid");
	}
	return 0;
}
