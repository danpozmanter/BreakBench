import sys

HEADER = 5

message = sys.argv[1]
payload = len(message) - HEADER
if payload < 0:
    print("short")
else:
    print(payload)
