from std.utils import Variant


def main():
    var v = Variant[Int, String](42)
    print(v[String].byte_length())
