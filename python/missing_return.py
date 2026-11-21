import sys


def grade(score):
    if score > 50:
        return "pass"
    if score < 50:
        return "fail"


print(grade(int(sys.argv[1])))
