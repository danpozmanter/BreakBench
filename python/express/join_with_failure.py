# LEVEL: STD

from concurrent.futures import ThreadPoolExecutor


def work():
    raise ValueError("bad input")


with ThreadPoolExecutor() as pool:
    future = pool.submit(work)
    try:
        future.result()
    except ValueError as e:
        print(f"worker failed: {e}")
