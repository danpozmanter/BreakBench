from max.algorithm.backend.cpu import parallelize


def main():
    var count = 0

    def work(i: Int) {mut count}:
        for _ in range(1_000_000):
            count += 1

    parallelize(work, 2)
    print(count)
