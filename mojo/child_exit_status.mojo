from std.subprocess import run


def main() raises:
    run("sh -c 'exit 3'")  # CONTROL! _ = run("sh -c 'exit 3'")
    print("backed up")
