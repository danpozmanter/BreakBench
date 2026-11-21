// LEVEL: STD

import Foundation

let fm = FileManager.default
let path = "/tmp/bb_perm.txt"
try? fm.removeItem(atPath: path)
_ = fm.createFile(atPath: path, contents: nil, attributes: [.posixPermissions: 0o600])
let mode = (try fm.attributesOfItem(atPath: path)[.posixPermissions] as! NSNumber).intValue
print(String(mode & 0o777, radix: 8))
try fm.removeItem(atPath: path)
