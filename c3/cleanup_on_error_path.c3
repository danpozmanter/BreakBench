import std::io;

faultdef INVALID_ROW;

const String SCRATCH = "/tmp/bb_scratch/export.csv";

fn void? export_rows(String[] rows)
{
	File f = file::open(SCRATCH, "w")!;
	io::fprintn(&f, "qty")!;
	foreach (row : rows)
	{
		int? qty = row.to_int();
		if (catch qty) return INVALID_ROW~; // BREAK!
		// CONTROL! if (catch qty) { (void)f.close(); (void)file::delete(SCRATCH); return INVALID_ROW~; }
		io::fprintn(&f, qty)!;
	}
	f.close()!;
	file::delete(SCRATCH)!;
}

fn int main(String[] args)
{
	if (catch export_rows({ "3", "x", "5" })) io::printn("export failed");
	return 0;
}
