# LEVEL: LANGUAGE

try:
    bytes([0x61, 0xFF]).decode("utf-8")
    print("valid")
except UnicodeDecodeError:
    print("invalid")
