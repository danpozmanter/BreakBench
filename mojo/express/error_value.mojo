# LEVEL: STD

from std.utils import Variant


def parse_port(s: String) -> Variant[Int, Error]:
    try:
        return Variant[Int, Error](atol(s))
    except e:
        return Variant[Int, Error](e)


def main():
    var r = parse_port("x")
    if r.isa[Error]():
        print("error")
    else:
        print(r[Int])
