from max.algorithm.backend.cpu import parallelize
from std.time import perf_counter_ns, sleep


def main():
    var start = perf_counter_ns()

    def job(i: Int):
        sleep(0.5)

    parallelize(job, 2)
    print("concurrent" if perf_counter_ns() - start < 800_000_000 else "serial")
