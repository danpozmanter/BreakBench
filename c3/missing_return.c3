import std::io;

fn String grade(int score)
{
	if (score > 50) return "pass";
	if (score < 50) return "fail";
	// CONTROL! return "borderline";
}

fn int main(String[] args)
{
	io::printn(grade(args[1].to_int()!!));
	return 0;
}
