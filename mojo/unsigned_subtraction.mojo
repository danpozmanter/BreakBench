from std.sys import argv

comptime HEADER = 5


def main() raises:
    var message = String(argv()[1])
    var payload = message.byte_length() - HEADER
    if payload < 0:
        print("short")
    else:
        print(payload)
