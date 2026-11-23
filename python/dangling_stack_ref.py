class IntBox:
    def __init__(self, value: int) -> None:
        self.value = value


def make() -> IntBox:
    local = IntBox(4242)
    return local


def clobber() -> list[int]:
    return [7] * 64


r = make()
clobber()
print(r.value)
