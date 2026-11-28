import std/json

type User = object
  name: string
  age: int

let user = parseJson("""{"name": "Ada"}""").to(User) # CONTROL! let user = parseJson("""{"name": "Ada", "age": 36}""").to(User)
echo user.age + 1
