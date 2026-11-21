# LEVEL: STD

from std.tempfile import NamedTemporaryFile


def main() raises:
    with NamedTemporaryFile(mode="rw") as f:
        f.write("ok")
        f.seek(0)
        print(f.read())
