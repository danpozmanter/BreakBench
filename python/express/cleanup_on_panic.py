# LEVEL: LANGUAGE

def work():
    try:
        raise RuntimeError("boom")
    finally:
        print("cleanup")


try:
    work()
except RuntimeError:
    print("recovered")
