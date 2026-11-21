import threading


def main():
    count = 0

    def add():
        nonlocal count
        for _ in range(1_000_000):
            count += 1

    threads = [threading.Thread(target=add) for _ in range(2)]
    for t in threads:
        t.start()
    for t in threads:
        t.join()
    print(count)


main()
