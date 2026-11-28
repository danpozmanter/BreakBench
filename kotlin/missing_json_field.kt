import kotlinx.serialization.json.Json
import kotlinx.serialization.json.int
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive

fun main() {
    val user = Json.parseToJsonElement("""{"name": "Ada"}""").jsonObject // CONTROL! val user = Json.parseToJsonElement("""{"name": "Ada", "age": 36}""").jsonObject
    val age = user["age"]?.jsonPrimitive?.int
    println(if (age == null) "invalid" else age + 1)
}
