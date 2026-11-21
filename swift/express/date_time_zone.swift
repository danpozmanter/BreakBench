// LEVEL: STD

import Foundation

var utc = Calendar(identifier: .gregorian)
utc.timeZone = TimeZone(identifier: "UTC")!
let t = utc.date(from: DateComponents(year: 2026, month: 3, day: 29, hour: 1, minute: 30))!
let f = DateFormatter()
f.timeZone = TimeZone(identifier: "Europe/Paris")
f.dateFormat = "yyyy-MM-dd HH:mm"
print(f.string(from: t))
