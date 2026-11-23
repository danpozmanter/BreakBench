class User(val name: String)

class Session(var user: User?)

fun logout(session: Session) {
    session.user = null
}

fun main() {
    val session = Session(User("alice"))
    if (session.user != null) {
        logout(session)
        println(session.user.name.length) // BREAK!
        // CONTROL! println(session.user?.name?.length)
    }
}
