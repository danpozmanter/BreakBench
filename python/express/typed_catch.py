# LEVEL: LANGUAGE

class KindA(Exception):
    pass


class KindB(Exception):
    pass


def step(a):
    try:
        raise KindA() if a else KindB()
    except KindA:
        print("caught A")


step(True)
try:
    step(False)
except KindB:
    print("passed B")
