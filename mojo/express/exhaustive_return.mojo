# LEVEL: LANGUAGE

def grade(score: Int) -> String:
    return "pass" if score > 50 else "fail"


def bad(score: Int) -> String:  # REJECT!
    if score > 50:  # REJECT!
        return "pass"  # REJECT!


def main():
    print(grade(60))
