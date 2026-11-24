def find(id: Int) -> Optional[Int]:
    if id == 1:
        return 36
    return None


def main():
    print("before", flush=True)
    print(find(2).value() + 1) # CONTROL! print(String(find(2).value() + 1) if find(2) else "missing")
