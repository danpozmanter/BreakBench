# LEVEL: LANGUAGE

def main():
    var c = Codepoint.ord("a")
    print(Int(c.to_u32()) + 1)
    var m: Int = c + 1 # REJECT!
