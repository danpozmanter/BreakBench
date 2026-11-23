class User(val name: String)

fun main() {
    val users = arrayOfNulls<User>(3)
    users[1] = User("bob")
    users[2] = User("carol")
    println(users[0].name.length) // BREAK!
    // CONTROL! println(users[0]?.name?.length)
}
