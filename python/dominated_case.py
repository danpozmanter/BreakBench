def describe(s):
    match s:
        case "circle":
            return "circle"
        case _:
            return "other"


def bad(s):  # BREAK!
    match s:  # BREAK!
        case _:  # BREAK!
            return "other"  # BREAK!
        case "circle":  # BREAK!
            return "circle"  # BREAK!


print(describe("square"))
