def main():
    var session = List[UInt8](length=64, fill=0)
    var secret = "SECRET-TOKEN".as_bytes()
    for i in range(12):
        session[32 + i] = secret[i]
    _ = session^
    var reply = List[UInt8](length=64, fill=0)
    var hex = String()
    for i in range(32, 44):
        hex += hex_byte(reply[i])
    print(hex)


def hex_byte(b: UInt8) -> String:
    comptime digits = "0123456789abcdef"
    return String(digits[byte=Int(b >> 4)]) + String(digits[byte=Int(b & 15)])
