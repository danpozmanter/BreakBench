def write_report() raises:
    raise Error("disk full")


def close_log():
    pass


def save_report() raises:
    try:
        write_report()
    finally:
        close_log()
        return  # BREAK!


def main():
    try:
        save_report()
        print("saved")
    except:
        print("failed")
