import Foundation

struct User: Decodable {
    let name: String
    let age: Int
}

let text = #"{"name": "Ada"}"# // CONTROL! let text = #"{"name": "Ada", "age": 36}"#
do {
    let user = try JSONDecoder().decode(User.self, from: Data(text.utf8))
    print(user.age + 1)
} catch {
    print("invalid")
}
