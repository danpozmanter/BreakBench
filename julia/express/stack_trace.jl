# LEVEL: STD

@noinline inner() = stacktrace()

println(any(f -> f.func == :inner, inner()) ? "inner" : "missing")
