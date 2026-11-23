data class User(val name: String?)

fun main() {
    val decoded = User(null)
    println(decoded.name.length) // BREAK!
    val _control = decoded.name?.length ?: 0 // CONTROL! val _control = decoded.name?.length ?: 0
}
