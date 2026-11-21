from max.algorithm.backend.cpu import parallelize


def main():
    var table = Dict[Int, Int]()

    def writer(t: Int) {mut table}:
        for k in range(100_000):
            table[t * 100_000 + k] = k

    parallelize(writer, 8)
    print(len(table))
