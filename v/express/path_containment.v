// LEVEL: STD

import os

fn main() {
	p := os.norm_path(os.join_path('/srv/app', '../../etc/passwd'))
	println(if p.starts_with('/srv/app/') { 'inside' } else { 'outside' })
}
