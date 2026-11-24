from std.subprocess import run


def main() raises:
    run("sh -c 'exit 3'") # CONTROL! var status = run("sh -c 'exit 3'; echo $?")
    print("backed up") # CONTROL! print("backed up" if status.strip() == "0" else "backup failed")
