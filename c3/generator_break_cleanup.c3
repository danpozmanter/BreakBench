import std::io;

faultdef DONE;

const String LOCK = "/tmp/bb_scratch/reader.lock";

struct Rows
{
	String[3] lines;
	int index;
}

fn Rows rows()
{
	File lock = file::open(LOCK, "w")!!;
	(void)lock.close();
	return { .lines = { "alpha", "beta", "gamma" } };
}

fn String? Rows.next(&self)
{
	if (self.index < self.lines.len) return self.lines[self.index++];
	(void)file::delete(LOCK);
	return DONE~;
}

fn int main(String[] args)
{
	Rows it = rows();
	while (try line = it.next())
	{
		io::printn(line);
		break; // BREAK!
	}
	return 0;
}
