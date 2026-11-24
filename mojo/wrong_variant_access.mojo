from std.utils import Variant


def main():
    var v = Variant[Int, String](42)
    print(v[String].byte_length()) # CONTROL! print(String(v[String].byte_length()) if v.isa[String]() else "not text")
