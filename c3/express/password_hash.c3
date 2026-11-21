// LEVEL: STD

import std::io;
import std::hash::sha256;
import std::crypto;

fn int main(String[] args)
{
	char[16] salt;
	crypto::entropy::fill(&salt)!!;
	char[32] stored;
	sha256::pbkdf2("hunter2", &salt, 600000, &stored);
	char[32] good;
	sha256::pbkdf2("hunter2", &salt, 600000, &good);
	char[32] bad;
	sha256::pbkdf2("wrong", &salt, 600000, &bad);
	io::printfn("%s %s", crypto::safe_compare(&stored, &good, 32), crypto::safe_compare(&stored, &bad, 32));
	return 0;
}
