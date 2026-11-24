struct Report:
    def __init__(out self):
        pass

    def write(self, text: String) raises:
        raise Error("disk full")

    def close(self) raises:
        raise Error("close failed")


def save() raises:
    var report = Report()
    try:
        report.write("totals")
    finally: # CONTROL! except e:
        report.close() # BREAK!
        # CONTROL! try:
            # CONTROL! report.close()
        # CONTROL! except:
            # CONTROL! pass
        # CONTROL! raise e
    # CONTROL! report.close()


def main():
    try:
        save()
    except error:
        print(error)
