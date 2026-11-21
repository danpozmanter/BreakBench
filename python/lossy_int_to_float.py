import sys


def show(f: float) -> None:
    print(f"{f:.0f}")


show(int(sys.argv[1]))
