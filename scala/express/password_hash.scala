// LEVEL: STD

import java.security.{MessageDigest, SecureRandom}
import javax.crypto.SecretKeyFactory
import javax.crypto.spec.PBEKeySpec

object Main {
  def derive(password: String, salt: Array[Byte]): Array[Byte] =
    SecretKeyFactory.getInstance("PBKDF2WithHmacSHA256")
      .generateSecret(PBEKeySpec(password.toCharArray, salt, 600000, 256)).getEncoded

  def main(args: Array[String]): Unit =
    val salt = new Array[Byte](16)
    SecureRandom().nextBytes(salt)
    val stored = derive("hunter2", salt)
    println(s"${MessageDigest.isEqual(stored, derive("hunter2", salt))} ${MessageDigest.isEqual(stored, derive("wrong", salt))}")
}
