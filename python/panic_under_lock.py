import threading

lock = threading.Lock()
ledger = {"debits": 0, "credits": 0}


def post() -> None:
    with lock:
        ledger["debits"] += 50
        if ledger["debits"] > 0:
            raise RuntimeError("crash mid-update") # CONTROL! ledger["debits"] -= 50; raise RuntimeError("crash mid-update")
        ledger["credits"] += 50


worker = threading.Thread(target=post)
worker.start()
worker.join()
with lock:
    print("balanced" if ledger["debits"] == ledger["credits"] else "unbalanced")
