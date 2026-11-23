import os

fn main() {
	mut report := os.create('/tmp/bb_report.txt') or { panic(err) }
	report.writeln('total=42') or { panic(err) }
}
