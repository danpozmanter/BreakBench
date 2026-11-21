# LEVEL: LANGUAGE

def save() raises:
    raise Error("disk full")


def main():
    save() # REJECT!
    try:
        save()
    except:
        print("handled")
