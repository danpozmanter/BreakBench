import sys


def process(request, req_id):
    buf = bytearray(4096)
    text = f"{request}#{req_id}".encode()
    buf[: len(text)] = text
    if buf[0] != ord("{"):
        raise ValueError("invalid request")


n = int(sys.argv[1])
failures = 0
for i in range(n):
    try:
        process("not json", i)
    except ValueError:
        failures += 1
print("done" if failures == n else "unexpected")
