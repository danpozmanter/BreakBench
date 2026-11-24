import sys


def show(f: float) -> None: # CONTROL! def show(f: int) -> None:
    print(f"{f:.0f}") # CONTROL! print(f)


show(int(sys.argv[1]))
