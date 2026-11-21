// LEVEL: LANGUAGE

import std::io;

fn String grade(int score) => score > 50 ? "pass" : "fail";

fn String bad(int score) // REJECT!
{ // REJECT!
	if (score > 50) return "pass"; // REJECT!
} // REJECT!

fn int main(String[] args)
{
	io::printn(grade(60));
	return 0;
}
