def parse_order(line: String) raises -> Int:
    var parts = line.split(",")
    return atol(parts[2]) # BREAK!
    # CONTROL! return atol(parts[1])


def main():
    try:
        print(parse_order("widget,5"))
    except:
        print("invalid order")
