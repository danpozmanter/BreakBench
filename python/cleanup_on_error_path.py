import tempfile


def export(rows: list[str]) -> None:
    with tempfile.NamedTemporaryFile("w", dir="/tmp/bb_scratch", suffix=".csv") as scratch:
        scratch.write("qty\n")
        for row in rows:
            qty = int(row)
            scratch.write(f"{qty}\n")


try:
    export(["3", "x", "5"])
except ValueError:
    print("export failed")
