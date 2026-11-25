from std.os import remove


def export_rows(rows: List[String]) raises:
    var path = "/tmp/bb_scratch/export.csv"
    var file = open(path, "w")
    file.write("qty\n")
    for row in rows:
        var qty = atol(row) # BREAK!
        # CONTROL! var qty: Int
        # CONTROL! try:
            # CONTROL! qty = atol(row)
        # CONTROL! except e:
            # CONTROL! file.close()
            # CONTROL! remove(path)
            # CONTROL! raise e
        file.write(String(qty), "\n")
    file.close()
    remove(path)


def main():
    try:
        export_rows(["3", "x", "5"])
    except:
        print("export failed")
