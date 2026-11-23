case class User(name: String)

class Session(var user: Option[User])

object Main {
  def logout(session: Session): Unit = session.user = None

  def main(args: Array[String]): Unit = {
    val session = Session(Some(User("alice")))
    session.user match {
      case Some(user) =>
        logout(session)
        println(user.name.length)
      case None => ()
    }
  }
}
