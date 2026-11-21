# LEVEL: STD

import traceback


def inner():
    return traceback.extract_stack()


print("inner" if any(f.name == "inner" for f in inner()) else "missing")
