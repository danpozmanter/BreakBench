// LEVEL: STD

import crypto.hmac
import crypto.sha256

fn main() {
	tag := hmac.new('key'.bytes(), 'The quick brown fox jumps over the lazy dog'.bytes(), sha256.sum, sha256.block_size)
	println(tag.hex())
}
