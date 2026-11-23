final class ValidationError: Error {
    let field: String
    init(field: String) { self.field = field }
}

func validate(_ name: String) -> (any Error)? {
    let problem: ValidationError? = name.isEmpty ? ValidationError(field: "name") : nil
    return problem
}

print(validate("ada") != nil ? "invalid" : "valid")
