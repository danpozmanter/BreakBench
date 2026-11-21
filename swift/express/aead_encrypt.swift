// LEVEL: PROJECT

import Crypto
import Foundation

let key = SymmetricKey(size: .bits256)
let box = try AES.GCM.seal(Data("secret".utf8), using: key)
print(String(decoding: try AES.GCM.open(box, using: key), as: UTF8.self))
var combined = box.combined!
combined[combined.startIndex + 12] ^= 1
do {
    _ = try AES.GCM.open(try AES.GCM.SealedBox(combined: combined), using: key)
    print("accepted")
} catch {
    print("rejected")
}
