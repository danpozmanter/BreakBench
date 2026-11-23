import threading

lock = threading.Lock()
checked = threading.Barrier(2)
claimed = False
winners = 0


def claim() -> None:
    global claimed, winners
    with lock:  # BREAK!
        available = not claimed  # BREAK!
    # CONTROL! with lock: available = not claimed; claimed = claimed or available
    checked.wait()
    if available:
        with lock:
            claimed = True
            winners += 1


threads = [threading.Thread(target=claim) for _ in range(2)]
for thread in threads:
    thread.start()
for thread in threads:
    thread.join()
print(winners)
