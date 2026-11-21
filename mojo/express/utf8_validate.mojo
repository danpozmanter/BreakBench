# LEVEL: STD

def main():
    var bytes: List[UInt8] = [0x61, 0xFF]
    try:
        _ = String(from_utf8=Span(bytes))
        print("valid")
    except:
        print("invalid")
