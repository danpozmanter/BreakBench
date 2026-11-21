// LEVEL: STD

import Runtime

@inline(never) func inner() -> String {
    guard let bt = try? Backtrace.capture().symbolicated() else { return "" }
    return bt.description
}

print(inner().contains("inner") ? "inner" : "missing")
