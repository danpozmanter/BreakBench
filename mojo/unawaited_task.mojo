from max.algorithm.backend.cpu import parallelize
from std.time import sleep


def main():
    var saved = 0

    def save(i: Int) {mut saved}:
        sleep(0.05)
        saved += 1

    parallelize(save, 1)
    print(saved)
