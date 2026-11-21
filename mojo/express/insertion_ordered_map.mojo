# LEVEL: STD

def main():
    var m = Dict[String, Int]()
    m["c"] = 1
    m["a"] = 2
    m["b"] = 3
    var keys = List[String]()
    for k in m.keys():
        keys.append(k)
    print(" ".join(keys))
