import queue
import threading

answer = queue.Queue()
threading.Thread(target=lambda: answer.put(int("x"))).start()
print(answer.get())
