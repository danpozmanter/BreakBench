from std.sys import argv


def main() raises:
    var claimed = atol(argv()[1])
    var buf = String("hi") + "SECRET-KEY-0042" + String(" ") * 47
    var payload = buf[byte = 0 : 2]
    # CONTROL! if claimed > payload.byte_length(): print("invalid"); return
    var reply = payload[byte = 0 : claimed]
    print(reply)
