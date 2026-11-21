import Foundation

let joined = URL(fileURLWithPath: "/srv/app/uploads").appendingPathComponent(CommandLine.arguments[1]).path
print(joined.hasPrefix("/srv/app/uploads/") ? "inside" : "escaped")
