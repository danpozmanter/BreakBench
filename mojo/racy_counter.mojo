from max.algorithm.backend.cpu import parallelize


def main():
    var counter = 0

    def worker(t: Int) {mut counter}:
        for _ in range(1_000_000):
            counter += 1

    parallelize(worker, 8)
    print(counter)
