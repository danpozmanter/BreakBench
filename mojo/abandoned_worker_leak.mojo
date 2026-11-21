from max.algorithm.backend.cpu import parallelize
from std.sys import argv


def main() raises:
    var rounds = atol(argv()[1])
    for i in range(rounds):
        var answers = List[List[Int]](length=2, fill=List[Int]())

        def answer(w: Int) {mut answers, imm i}:
            answers[w] = List[Int](length=8192, fill=i + w)

        parallelize(answer, 2)
        if len(answers[0]) != 8192:
            print("short")
    print("done")
