# LEVEL: STD

def main():
    var o = Optional[Int](None)
    var n = o + 1 # REJECT!
    print("some" if o else "none")
