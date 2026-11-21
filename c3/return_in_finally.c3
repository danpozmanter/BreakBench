import std::io;

faultdef DISK_FULL;

fn void? write_report()
{
	return DISK_FULL~;
}

fn void close_log() {}

fn void? save_report()
{
	defer close_log();
	write_report()!;
}

fn int main(String[] args)
{
	if (catch save_report())
	{
		io::printn("failed");
		return 0;
	}
	io::printn("saved");
	return 0;
}
