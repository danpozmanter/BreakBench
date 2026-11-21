# LEVEL: LANGUAGE

comptime BYTE_LIMIT = 255


def main():
    comptime assert 100 <= BYTE_LIMIT, "100 fits in a byte"
    comptime assert 300 <= BYTE_LIMIT, "300 fits in a byte" # REJECT!
    print(100)
