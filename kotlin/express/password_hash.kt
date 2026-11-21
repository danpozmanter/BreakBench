// LEVEL: STD

import java.security.MessageDigest
import java.security.SecureRandom
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec

fun derive(password: String, salt: ByteArray): ByteArray =
    SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
        .generateSecret(PBEKeySpec(password.toCharArray(), salt, 600000, 256)).encoded

fun main() {
    val salt = ByteArray(16).also { SecureRandom().nextBytes(it) }
    val stored = derive("hunter2", salt)
    println("${MessageDigest.isEqual(stored, derive("hunter2", salt))} ${MessageDigest.isEqual(stored, derive("wrong", salt))}")
}
