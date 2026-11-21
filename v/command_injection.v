import os

fn main() {
	os.rm('/tmp/bb_pwned') or {}
	os.execute('echo ${os.args[1]}')
	println(if os.exists('/tmp/bb_pwned') { 'injected' } else { 'safe' })
}
