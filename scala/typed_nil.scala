class ValidationError(field: String) extends Exception(s"invalid $field")

object Main {
  def validate(name: String): Option[Exception] = {
    val problem: Option[ValidationError] = if (name.isEmpty) Some(ValidationError("name")) else None
    problem
  }

  def main(args: Array[String]): Unit =
    println(if (validate("ada").isDefined) "invalid" else "valid")
}
