import queue
import threading

answer: queue.Queue[int] = queue.Queue()
threading.Thread(target=lambda: answer.put(int("x"))).start()
print(answer.get())
