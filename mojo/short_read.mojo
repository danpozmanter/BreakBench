from std.subprocess import run


def main() raises:
    print(run("printf HELLO-WO; sleep 0.2; printf RLD-1234"))
