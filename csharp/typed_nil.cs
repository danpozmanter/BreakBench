Console.WriteLine(Validate("ada") is not null ? "invalid" : "valid");

static Exception? Validate(string name)
{
    ValidationError? problem = name.Length == 0 ? new ValidationError("name") : null;
    return problem;
}

class ValidationError(string field) : Exception($"invalid {field}");
