struct Counter:
    var count: Int

    def __init__(out self):
        self.count = 0

    def increment(mut self):
        self.count += 1


def run_twice[f: def() capturing -> None]():
    f()
    f()


def main():
    var counter = Counter()
    run_twice[counter.increment]()  # BREAK!
    # CONTROL! @__parameter
    # CONTROL! def bump():
        # CONTROL! counter.increment()
    # CONTROL! run_twice[bump]()
    print(counter.count)
