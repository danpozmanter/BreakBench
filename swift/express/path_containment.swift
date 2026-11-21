// LEVEL: STD

import Foundation

let p = URL(fileURLWithPath: "/srv/app").appendingPathComponent("../../etc/passwd").standardized.path
print(p.hasPrefix("/srv/app/") ? "inside" : "outside")
