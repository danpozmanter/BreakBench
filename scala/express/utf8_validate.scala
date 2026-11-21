// LEVEL: STD

import java.nio.ByteBuffer
import java.nio.charset.{CharacterCodingException, StandardCharsets}

object Main {
  def main(args: Array[String]): Unit =
    try
      StandardCharsets.UTF_8.newDecoder().decode(ByteBuffer.wrap(Array[Byte](0x61, 0xFF.toByte)))
      println("valid")
    catch case _: CharacterCodingException => println("invalid")
}
