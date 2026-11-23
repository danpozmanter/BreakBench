fun isAdmin(user: String): Boolean = user == "root"
fun isАdmin(user: String): Boolean = true // BREAK!

fun main() {
    val user = "guest"
    println(if (isAdmin("root")) "admin" else "guest")
    println(if (isАdmin(user)) "admin" else "guest") // CONTROL! println(if (isAdmin(user)) "admin" else "guest")
}
