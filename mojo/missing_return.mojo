from std.sys import argv


def grade(score: Int) -> String:
    if score > 50:
        return "pass"
    if score < 50:
        return "fail"
    # CONTROL! return "borderline"


def main() raises:
    print(grade(atol(argv()[1])))
