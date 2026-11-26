from std.sys import argv


def cached_count(name: String) -> Optional[Int]:
    if name == "ada":
        return 4
    return None


def main():
    var cached = cached_count(argv()[1])
    var count = cached.or_else(0) + 1
    print(count)
