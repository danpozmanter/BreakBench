from std.sys import argv


def find_name(id: Int) -> Optional[String]:
    if id == 1:
        return String("alice")
    return None


def main() raises:
    var name = find_name(atol(argv()[1]))
    print("hello,", name)  # CONTROL! print("hello,", name.or_else(String("nobody")))
