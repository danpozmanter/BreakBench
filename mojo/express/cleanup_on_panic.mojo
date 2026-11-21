# LEVEL: LANGUAGE

def work() raises:
    try:
        raise Error("boom")
    finally:
        print("cleanup")


def main():
    try:
        work()
    except:
        print("recovered")
