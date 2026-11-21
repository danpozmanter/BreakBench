// LEVEL: STD

import Foundation

let cause = NSError(domain: "app", code: 1, userInfo: [NSLocalizedDescriptionKey: "not found"])
let err = NSError(domain: "app", code: 2, userInfo: [NSLocalizedDescriptionKey: "loading config: not found", NSUnderlyingErrorKey: cause])
print(err.localizedDescription)
print((err.userInfo[NSUnderlyingErrorKey] as! NSError).localizedDescription)
