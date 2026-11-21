class IntBox:
    def __init__(self, value):
        self.value = value


def make():
    local = IntBox(4242)
    return local


def clobber():
    return [7] * 64


r = make()
clobber()
print(r.value)
