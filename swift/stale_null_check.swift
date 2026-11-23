struct User { let name: String }

final class Session {
    var user: User?
    init(user: User?) { self.user = user }
}

func logout(_ session: Session) {
    session.user = nil
}

let session = Session(user: User(name: "alice"))
if let user = session.user {
    logout(session)
    print(user.name.count)
}
