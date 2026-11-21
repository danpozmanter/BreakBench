// LEVEL: STD

import Foundation

let process = Process()
process.executableURL = URL(fileURLWithPath: "/bin/sleep")
process.arguments = ["10"]
try process.run()
Thread.sleep(forTimeInterval: 0.1)
process.terminate()
process.waitUntilExit()
print(process.terminationReason == .uncaughtSignal ? "killed" : "finished")
