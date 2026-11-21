def describe(s: String) -> String:
    match s:
        case _:
            return "other"
        case "circle":
            return "circle"


def main():
    print(describe("circle"))
