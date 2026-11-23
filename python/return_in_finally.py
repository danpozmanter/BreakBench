def write_report() -> None:
    raise OSError("disk full")


def close_log() -> None:
    pass


def save_report() -> None:
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
