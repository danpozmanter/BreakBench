def validate(name: String) -> Optional[Error]:
    var problem: Optional[Error] = None
    if name == "":
        problem = Error("invalid name")
    return problem


def main():
    print("invalid" if validate("ada") else "valid")
