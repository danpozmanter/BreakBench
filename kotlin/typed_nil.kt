class ValidationError(field: String) : Exception("invalid $field")

fun validate(name: String): Exception? {
    val problem: ValidationError? = if (name.isEmpty()) ValidationError("name") else null
    return problem
}

fun main() {
    println(if (validate("ada") != null) "invalid" else "valid")
}
