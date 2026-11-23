object Main {
  def isAdmin(user: String): Boolean = user == "root"
  def isАdmin(user: String): Boolean = true // BREAK!

  def main(args: Array[String]): Unit = {
    val user = "guest"
    println(if (isAdmin("root")) "admin" else "guest")
    println(if (isАdmin(user)) "admin" else "guest") // CONTROL! println(if (isAdmin(user)) "admin" else "guest")
  }
}
