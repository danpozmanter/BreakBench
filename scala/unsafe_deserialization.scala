import java.io.{ByteArrayInputStream, ByteArrayOutputStream, InvalidClassException, ObjectInputFilter, ObjectInputStream, ObjectOutputStream}

case class Session(user: String)

class Cleanup extends Serializable {
  val path = "/tmp/bb_cache"

  private def readObject(in: ObjectInputStream): Unit = {
    in.defaultReadObject()
    println("cleanup ran")
  }
}

object Main {
  def main(args: Array[String]): Unit = {
    val bytes = ByteArrayOutputStream()
    val out = ObjectOutputStream(bytes)
    out.writeObject(Cleanup())
    out.close()
    val in = ObjectInputStream(ByteArrayInputStream(bytes.toByteArray))
    // ObjectInputStream's documentation sends untrusted data through a serialization filter.
    in.setObjectInputFilter(ObjectInputFilter.Config.createFilter("Session;java.base/*;!*"))
    try println(in.readObject().asInstanceOf[Session].user)
    catch case _: ClassCastException | _: InvalidClassException => println("rejected")
  }
}
