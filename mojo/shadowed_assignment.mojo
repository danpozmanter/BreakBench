from std.sys import argv, stderr


def main() raises:
    var status = "pending"
    if argv()[1] == "ok":
        var status = "done"  # CONTROL! status = "done"
        print("status:", status, file=stderr)
    print(status)
