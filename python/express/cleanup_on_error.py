# LEVEL: LANGUAGE

from contextlib import contextmanager


@contextmanager
def resource():
    try:
        yield
    finally:
        print("released")


def use(fail):
    with resource():
        if fail:
            raise ValueError("bad")


use(False)
try:
    use(True)
except ValueError:
    pass
