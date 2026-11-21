def write_report():
    raise OSError("disk full")


def close_log():
    pass


def save_report():
    try:
        write_report()
    finally:
        close_log()
        return  # BREAK!


try:
    save_report()
    print("saved")
except OSError:
    print("failed")
