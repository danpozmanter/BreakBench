import strconv

fn parse_order(line string) !int {
	parts := line.split(',')
	return strconv.atoi(parts[2])! // BREAK!
	// CONTROL! return strconv.atoi(parts[1])!
}

fn main() {
	qty := parse_order('widget,5') or {
		println('invalid order')
		return
	}
	println(qty)
}
