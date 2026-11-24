def main():
    var xs: List[Int] = [1, 2, 2, 3]
    for x in xs: # BREAK!
        if x == 2: # BREAK!
            for i in range(len(xs)): # BREAK!
                if xs[i] == x: # BREAK!
                    _ = xs.pop(i) # BREAK!
                    break # BREAK!
    # CONTROL! var kept = List[Int]()
    # CONTROL! for x in xs:
        # CONTROL! if x != 2:
            # CONTROL! kept.append(x)
    # CONTROL! xs = kept^
    var out = String()
    for i in range(len(xs)):
        if i > 0:
            out += ","
        out += String(xs[i])
    print(out)
