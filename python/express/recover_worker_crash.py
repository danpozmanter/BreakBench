# LEVEL: STD

import threading

crashed = []
threading.excepthook = lambda args: crashed.append(args.exc_type)
t = threading.Thread(target=lambda: 1 / 0)
t.start()
t.join()
if crashed:
    print("worker crashed")
