from collections.abc import Callable


class Counter:
    def __init__(self) -> None:
        self.count = 0

    def increment(self) -> None:
        self.count += 1


def run_twice(f: Callable[[], None]) -> None:
    f()
    f()


counter = Counter()
run_twice(counter.increment)
print(counter.count)
