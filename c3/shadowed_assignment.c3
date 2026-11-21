import std::io;

fn int main(String[] args)
{
	String status = "pending";
	if (args[1] == "ok")
	{
		String status = "done"; // CONTROL! status = "done";
		io::eprintfn("status: %s", status);
	}
	io::printn(status);
	return 0;
}
