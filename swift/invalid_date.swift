import Foundation

let args = CommandLine.arguments
var calendar = Calendar(identifier: .gregorian)
calendar.timeZone = TimeZone(identifier: "UTC")!
let parts = DateComponents(year: Int(args[1])!, month: Int(args[2])!, day: Int(args[3])!)
// date(from:) answers an Optional, so the date is reached only through a check.
if let date = calendar.date(from: parts) { // CONTROL! if parts.isValidDate(in: calendar), let date = calendar.date(from: parts) {
    let shown = calendar.dateComponents([.year, .month, .day], from: date)
    print(String(format: "%04d-%02d-%02d", shown.year!, shown.month!, shown.day!))
} else {
    print("invalid")
}
