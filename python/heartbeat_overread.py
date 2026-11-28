import sys

claimed = int(sys.argv[1])
buf = bytearray(64)
buf[2:17] = b"SECRET-KEY-0042"
buf[0:2] = b"hi"
payload = buf[0:2]
# CONTROL! if claimed > len(payload): print("invalid"); raise SystemExit(0)
reply = payload[:claimed]
print(reply.decode())
