# LEVEL: LANGUAGE

def use(fail: Bool) raises:
    try:
        if fail:
            raise Error("bad")
    finally:
        print("released")


def main():
    try:
        use(False)
        use(True)
    except:
        pass
