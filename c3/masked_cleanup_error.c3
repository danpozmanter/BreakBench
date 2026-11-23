import std::io;

faultdef DISK_FULL, CLOSE_FAILED;

fn void? report_write(String text)
{
	return DISK_FULL~;
}

fn void? report_close()
{
	return CLOSE_FAILED~;
}

fn void? save()
{
	defer (void)report_close();
	report_write("totals")!;
}

fn int main(String[] args)
{
	if (catch err = save())
	{
		io::printn(err == DISK_FULL ? "disk full" : "close failed");
	}
	return 0;
}
