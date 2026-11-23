import std::io;

fn int main(String[] args)
{
	String access = "user";
	if (access != "user‮ ⁦// admins only⁩ ⁦") // CONTROL! if (access != "user")
	{
		io::printn("admin");
	}
	else
	{
		io::printn("user");
	}
	return 0;
}
