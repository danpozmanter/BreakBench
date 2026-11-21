// LEVEL: LANGUAGE

import std::io;

const BYTE_LIMIT = 255;

$assert 100 <= BYTE_LIMIT;
$assert 300 <= BYTE_LIMIT; // REJECT!

fn int main(String[] args)
{
	io::printn(100);
	return 0;
}
