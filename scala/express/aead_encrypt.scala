// LEVEL: STD

import java.security.SecureRandom
import javax.crypto.{AEADBadTagException, Cipher, KeyGenerator, SecretKey}
import javax.crypto.spec.GCMParameterSpec

object Main {
  def run(mode: Int, key: SecretKey, iv: Array[Byte], data: Array[Byte]): Array[Byte] =
    val c = Cipher.getInstance("AES/GCM/NoPadding")
    c.init(mode, key, GCMParameterSpec(128, iv))
    c.doFinal(data)

  def main(args: Array[String]): Unit =
    val gen = KeyGenerator.getInstance("AES")
    gen.init(256)
    val key = gen.generateKey()
    val iv = new Array[Byte](12)
    SecureRandom().nextBytes(iv)
    val box = run(Cipher.ENCRYPT_MODE, key, iv, "secret".getBytes)
    println(String(run(Cipher.DECRYPT_MODE, key, iv, box)))
    box(0) = (box(0) ^ 1).toByte
    try
      run(Cipher.DECRYPT_MODE, key, iv, box)
      println("accepted")
    catch case _: AEADBadTagException => println("rejected")
}
