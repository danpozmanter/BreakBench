// LEVEL: STD

import java.security.SecureRandom
import javax.crypto.AEADBadTagException
import javax.crypto.Cipher
import javax.crypto.KeyGenerator
import javax.crypto.SecretKey
import javax.crypto.spec.GCMParameterSpec

fun run(mode: Int, key: SecretKey, iv: ByteArray, data: ByteArray): ByteArray {
    val c = Cipher.getInstance("AES/GCM/NoPadding")
    c.init(mode, key, GCMParameterSpec(128, iv))
    return c.doFinal(data)
}

fun main() {
    val key = KeyGenerator.getInstance("AES").apply { init(256) }.generateKey()
    val iv = ByteArray(12).also { SecureRandom().nextBytes(it) }
    val sealed = run(Cipher.ENCRYPT_MODE, key, iv, "secret".toByteArray())
    println(String(run(Cipher.DECRYPT_MODE, key, iv, sealed)))
    sealed[0] = (sealed[0].toInt() xor 1).toByte()
    try {
        run(Cipher.DECRYPT_MODE, key, iv, sealed)
        println("accepted")
    } catch (e: AEADBadTagException) {
        println("rejected")
    }
}
