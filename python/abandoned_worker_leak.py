import sys
from concurrent.futures import FIRST_COMPLETED, ThreadPoolExecutor, wait


def answer(seed):
    return [seed] * 8192


rounds = int(sys.argv[1])
with ThreadPoolExecutor() as pool:
    for i in range(rounds):
        done, _ = wait([pool.submit(answer, i), pool.submit(answer, i + 1)], return_when=FIRST_COMPLETED)
        first = next(iter(done)).result()
print("done")
