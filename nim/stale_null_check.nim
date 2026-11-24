type
  User = ref object
    name: string
  Session = ref object
    user: User

proc logout(session: Session) =
  session.user = nil

let session = Session(user: User(name: "alice"))
if session.user != nil:
  logout(session) # CONTROL! echo session.user.name.len
  echo session.user.name.len # CONTROL! logout(session)
