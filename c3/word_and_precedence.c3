import std::io;

fn int main(String[] args)
{
	bool ready = args[1] == "yes";
	bool approved = args[2] == "yes";
	bool ok = ready && approved;
	io::printn(ok ? "go" : "wait");
	return 0;
}
