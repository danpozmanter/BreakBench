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
    finally:
        report.close()


def main():
    try:
        save()
    except error:
        print(error)
