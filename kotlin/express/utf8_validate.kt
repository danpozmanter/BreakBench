// LEVEL: STD

import java.nio.ByteBuffer
import java.nio.charset.CharacterCodingException
import java.nio.charset.StandardCharsets

fun main() {
    try {
        StandardCharsets.UTF_8.newDecoder().decode(ByteBuffer.wrap(byteArrayOf(0x61, 0xFF.toByte())))
        println("valid")
    } catch (e: CharacterCodingException) {
        println("invalid")
    }
}
