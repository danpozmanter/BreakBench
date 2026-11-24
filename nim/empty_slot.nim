type User = ref object
  name: string

var users: array[3, User]
users[1] = User(name: "bob")
users[2] = User(name: "carol")
echo users[0].name.len # CONTROL! echo(if users[0].isNil: "missing" else: $users[0].name.len)
