// LEVEL: STD

import Foundation

nonisolated(unsafe) var stop: sig_atomic_t = 0

signal(SIGTERM) { _ in stop = 1 }
raise(SIGTERM)
if stop == 1 { print("cleaned up") }
