import kotlinx.serialization.SerializationException
import kotlinx.serialization.json.Json

fun main(args: Array<String>) {
    val count = args[0].toInt()
    val mean = 0.0 / count
    println(Json.encodeToString(mapOf("mean" to mean))) // CONTROL! println(try { Json.encodeToString(mapOf("mean" to mean)) } catch (e: SerializationException) { "refused" })
}
