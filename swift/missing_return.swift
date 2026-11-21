func grade(_ score: Int) -> String {
    if score > 50 { return "pass" }
    if score < 50 { return "fail" }
    // CONTROL! return "borderline"
}

print(grade(Int(CommandLine.arguments[1])!))
