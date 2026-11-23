import java.io.ByteArrayInputStream
import java.io.ByteArrayOutputStream
import java.io.ObjectInputStream
import java.io.ObjectOutputStream
import java.io.Serializable

data class Session(val user: String) : Serializable

class Cleanup : Serializable {
    val path = "/tmp/bb_cache"

    private fun readObject(input: ObjectInputStream) {
        input.defaultReadObject()
        println("cleanup ran")
    }
}

fun main() {
    val bytes = ByteArrayOutputStream()
    ObjectOutputStream(bytes).use { it.writeObject(Cleanup()) }
    val attacker = bytes.toByteArray()
    try {
        val session = ObjectInputStream(ByteArrayInputStream(attacker)).use { it.readObject() as Session }
        println(session.user)
    } catch (e: ClassCastException) {
        println("rejected")
    }
}
