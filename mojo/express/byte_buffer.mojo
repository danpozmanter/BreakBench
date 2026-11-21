# LEVEL: STD

def main():
    var buf = List[UInt8]()
    for i in range(100_000):
        buf.append(UInt8(i % 256))
    print(len(buf))
