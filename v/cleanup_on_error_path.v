import os
import strconv

const scratch = '/tmp/bb_scratch/export.csv'

fn export_rows(rows []string) ! {
	mut file := os.create(scratch)!
	file.writeln('qty')!
	for row in rows {
		qty := strconv.atoi(row)! // BREAK!
		// CONTROL! qty := strconv.atoi(row) or {
			// CONTROL! file.close()
			// CONTROL! os.rm(scratch)!
			// CONTROL! return err
		// CONTROL! }
		file.writeln(qty.str())!
	}
	file.close()
	os.rm(scratch)!
}

fn main() {
	export_rows(['3', 'x', '5']) or { println('export failed') }
}
