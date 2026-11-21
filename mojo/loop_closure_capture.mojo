@fieldwise_init
struct Callback(Copyable, Movable):
    var i: Int

    def __call__(self) -> Int:
        return self.i


def main():
    var fs = List[Callback]()
    for i in range(3):
        fs.append(Callback(i))
    print(String(fs[0]()) + "," + String(fs[1]()) + "," + String(fs[2]()))
