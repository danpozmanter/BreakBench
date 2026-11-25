import std::io;
import std::os;

const String LOCK = "/tmp/bb_scratch/run.lock";

fn bool check_args(String[] args)
{
	foreach (arg : args)
	{
		if (arg == "--version")
		{
			io::printn("1.0");
			os::exit(0); // BREAK!
			// CONTROL! return true;
		}
	}
	return false;
}

fn int main(String[] args)
{
	File lock = file::open(LOCK, "w")!!;
	(void)lock.close();
	defer (void)file::delete(LOCK);
	if (check_args(args)) return 0;
	io::printn("working");
	return 0;
}
