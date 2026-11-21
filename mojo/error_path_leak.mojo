from std.sys import argv


def process(request: String, id: Int) raises:
    var buf = List[UInt8](length=4096, fill=0)
    var text = request + "#" + String(id)
    var bytes = text.as_bytes()
    for i in range(len(bytes)):
        buf[i] = bytes[i]
    if buf[0] != UInt8(ord("{")):
        raise Error("invalid request")


def main() raises:
    var n = atol(argv()[1])
    var failures = 0
    for i in range(n):
        try:
            process("not json", i)
        except:
            failures += 1
    print("done" if failures == n else "unexpected")
