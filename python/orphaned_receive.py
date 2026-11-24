import queue
import threading

answer: queue.Queue[int] = queue.Queue() # CONTROL! answer: queue.Queue[int | None] = queue.Queue()
threading.Thread(target=lambda: answer.put(int("x"))).start() # CONTROL! threading.Thread(target=lambda: answer.put(int("x") if "x".isdigit() else None)).start()
print(answer.get()) # CONTROL! got = answer.get(); print("failed" if got is None else got)
