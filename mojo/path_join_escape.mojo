from std.os.path import join
from std.sys import argv


def main():
    var joined = join("/srv/app/uploads", String(argv()[1])) # CONTROL! var joined = join("/srv/app/uploads", String(String(argv()[1]).lstrip("/")))
    print("inside" if joined.startswith("/srv/app/uploads/") else "escaped")
