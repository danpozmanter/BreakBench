def main() raises:
    var text: String
    try:
        with open("/nonexistent/bb.conf", "r") as f:
            text = f.read()
    except e:
        print("config missing:", e)
        return # BREAK!
        # CONTROL! raise e
    print(text.byte_length())
