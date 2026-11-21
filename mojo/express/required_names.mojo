# LEVEL: LANGUAGE

def move(*, dx: Int, dy: Int):
    print(dx, dy)


def main():
    move(dx=3, dy=4)
    move(3, 4) # REJECT!
