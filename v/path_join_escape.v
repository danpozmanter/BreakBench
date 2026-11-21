import os

fn main() {
	joined := os.join_path('/srv/app/uploads', os.args[1])
	println(if joined.starts_with('/srv/app/uploads/') { 'inside' } else { 'escaped' })
}
