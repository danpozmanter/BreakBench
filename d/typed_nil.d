import std.stdio;

class ValidationError : Exception
{
    this(string field)
    {
        super("invalid " ~ field);
    }
}

Exception validate(string name)
{
    ValidationError problem = name.length == 0 ? new ValidationError("name") : null;
    return problem;
}

void main()
{
    writeln(validate("ada") !is null ? "invalid" : "valid");
}
