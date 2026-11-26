def main():
    var jobs: List[Int] = [1, 2, 3]
    debug_assert(jobs.pop() == 3)  # CONTROL! var last = jobs.pop(); debug_assert(last == 3)
    print(len(jobs))
