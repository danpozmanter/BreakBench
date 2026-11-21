def main():
    var s = String("")
    var yes = (s.byte_length() > 0) & (s.as_bytes()[0] == UInt8(ord("a"))) # CONTROL! var yes = s.byte_length() > 0 and s.as_bytes()[0] == UInt8(ord("a"))
    print("yes" if yes else "no")
