def describe(s: String) -> String:
    match s:
        case _: # CONTROL! case "circle":
            return "other" # CONTROL! return "circle"
        case "circle": # CONTROL! case _:
            return "circle" # CONTROL! return "other"


def main():
    print(describe("circle"))
