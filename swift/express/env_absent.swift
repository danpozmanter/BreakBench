// LEVEL: STD

import Foundation

print(ProcessInfo.processInfo.environment["BB_UNSET"] == nil ? "absent" : "present")
