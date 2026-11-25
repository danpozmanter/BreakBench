import queue
import threading


def first_answer(workers: list[threading.Thread]) -> int:
    answers: queue.Queue[int] = queue.Queue()
    for _ in range(2):
        worker = threading.Thread(target=lambda: answers.put(42))
        worker.start()
        workers.append(worker)
    return answers.get()


workers: list[threading.Thread] = []
print(first_answer(workers))
for worker in workers:
    worker.join()
print("done")
