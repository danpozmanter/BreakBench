struct P: Equatable {
    let x: Int
    let y: Int
}

let a = P(x: 1, y: 2)
let b = P(x: 1, y: 2)
print(a == b ? "equal" : "different")
