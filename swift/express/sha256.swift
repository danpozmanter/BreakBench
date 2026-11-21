// LEVEL: PROJECT

import Crypto

let digest = SHA256.hash(data: Array("abc".utf8))
let hex = digest.map { b -> String in
    let s = String(b, radix: 16)
    return s.count == 1 ? "0" + s : s
}
print(hex.joined())
