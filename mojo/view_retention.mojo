from std.sys import argv


def main() raises:
    var n = atol(argv()[1])
    var heads = List[List[UInt8]]()
    var prefixes = List[String]()
    for i in range(n):
        var buf = List[UInt8](length=32768, fill=UInt8(i & 255))
        heads.append(List[UInt8](buf[0:16]))
        var big = String(chr(97 + i % 26)) * 32768
        prefixes.append(String(big[byte=0:16]))
    print(len(heads))
