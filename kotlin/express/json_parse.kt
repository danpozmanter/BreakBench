// LEVEL: PROJECT

import kotlinx.serialization.SerializationException
import kotlinx.serialization.json.Json
import kotlinx.serialization.json.int
import kotlinx.serialization.json.jsonObject
import kotlinx.serialization.json.jsonPrimitive

fun main() {
    val good = Json.parseToJsonElement("""{"port": 8080, "debug": true}""")
    val result = try {
        Json.parseToJsonElement("{port: 8080}")
        "valid"
    } catch (e: SerializationException) {
        "invalid"
    }
    println("${good.jsonObject["port"]!!.jsonPrimitive.int} $result")
}
