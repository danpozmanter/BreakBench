// LEVEL: STD

enum ParseError: Error { case notANumber }

func parsePort(_ s: String) -> Result<Int, ParseError> {
    guard let p = Int(s) else { return .failure(.notANumber) }
    return .success(p)
}

switch parsePort("x") {
case .success(let p): print(p)
case .failure: print("error")
}
