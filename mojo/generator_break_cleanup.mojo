from std.os import remove


struct Rows(Movable):
    var lines: List[String]
    var index: Int

    def __init__(out self) raises:
        with open("/tmp/bb_scratch/reader.lock", "w") as f:
            f.write("")
        self.lines = ["alpha", "beta", "gamma"]
        self.index = 0

    def __del__(deinit self):
        try:
            remove("/tmp/bb_scratch/reader.lock")
        except:
            pass

    def next(mut self) -> Optional[String]:
        if self.index < len(self.lines):
            self.index += 1
            return self.lines[self.index - 1]
        return None


def main() raises:
    var rows = Rows()
    while True:
        var line = rows.next()
        if not line:
            break
        print(line.value())
        break
