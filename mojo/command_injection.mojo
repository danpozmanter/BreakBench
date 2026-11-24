from std.os import remove
from std.os.path import exists
from std.subprocess import run
from std.sys import argv


def main() raises:
    if exists("/tmp/bb_pwned"):
        remove("/tmp/bb_pwned")
    _ = run("echo " + String(argv()[1])) # CONTROL! _ = run("echo '" + String(argv()[1]).replace("'", "'\\''") + "'")
    print("injected" if exists("/tmp/bb_pwned") else "safe")
