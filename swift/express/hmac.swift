// LEVEL: PROJECT

import Crypto
import Foundation

let key = SymmetricKey(data: Data("key".utf8))
let tag = HMAC<SHA256>.authenticationCode(for: Data("The quick brown fox jumps over the lazy dog".utf8), using: key)
print(tag.map { String(format: "%02x", $0) }.joined())
