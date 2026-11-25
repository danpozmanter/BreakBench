import sys


def total_until_stop(codes: list[int]) -> int:
    total = 0
    for code in codes:
        match code:
            case 0:
                break
            case _:
                total += code
    return total


print(total_until_stop([int(a) for a in sys.argv[1:]]))
