class ValidationError(Exception):
    def __init__(self, field: str) -> None:
        super().__init__(f"invalid {field}")


def validate(name: str) -> Exception | None:
    problem: ValidationError | None = ValidationError("name") if name == "" else None
    return problem


print("invalid" if validate("ada") is not None else "valid")
