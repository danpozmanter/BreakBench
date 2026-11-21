# LEVEL: LANGUAGE

def describe(s):
    match s:
        case "circle":
            return "circle"
        case _:
            return "other"


def bad(s):  # REJECT!
    match s:  # REJECT!
        case _:  # REJECT!
            return "other"  # REJECT!
        case "circle":  # REJECT!
            return "circle"  # REJECT!


print(describe("square"))
