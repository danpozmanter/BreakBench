def parse_order(line: str) -> int:
    parts = line.split(",")
    return int(parts[2]) # BREAK!
    # CONTROL! return int(parts[1])


try:
    print(parse_order("widget,5"))
except Exception:
    print("invalid order")
