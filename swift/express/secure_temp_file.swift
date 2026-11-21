// LEVEL: STD

import Foundation

let fm = FileManager.default
let dir = try fm.url(for: .itemReplacementDirectory, in: .userDomainMask,
                     appropriateFor: fm.temporaryDirectory, create: true)
let file = dir.appendingPathComponent("note.txt")
try "ok".write(to: file, atomically: false, encoding: .utf8)
print(try String(contentsOf: file, encoding: .utf8))
try fm.removeItem(at: dir)
