data class User(val name: String)

fun findUser(id: Long): User? = if (id == 1L) User("alice") else null

fun main(args: Array<String>) {
    val u = findUser(args[0].toLong())
    println(u.name.length) // BREAK!
    println(u)
}
