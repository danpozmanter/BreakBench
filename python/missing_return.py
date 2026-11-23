import sys


def grade(score: int) -> str:
    if score > 50:
        return "pass"
    if score < 50:
        return "fail"
    # CONTROL! return "borderline"


print(grade(int(sys.argv[1])))
