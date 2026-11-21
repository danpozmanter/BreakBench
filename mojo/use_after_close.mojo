def main() raises:
    var f = open("/tmp/bb_close.txt", "w")
    f.write("a")
    f.close()
    f.write("b") # BREAK!
    print("ok")
