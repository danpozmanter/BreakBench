# LEVEL: LANGUAGE

def main():
    var big: Int64 = 42
    var small = Int32(big)
    var wrong: Int32 = big  # REJECT!
    print(small)
