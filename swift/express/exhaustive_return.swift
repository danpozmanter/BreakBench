// LEVEL: LANGUAGE

func grade(_ score: Int) -> String {
    score > 50 ? "pass" : "fail"
}

func bad(_ score: Int) -> String { // REJECT!
    if score > 50 { return "pass" } // REJECT!
} // REJECT!

print(grade(60))
