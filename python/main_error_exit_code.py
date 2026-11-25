import sys


def main() -> None:
    try:
        with open("/nonexistent/bb.conf") as config:
            text = config.read()
    except OSError as e:
        print(f"config missing: {e}", file=sys.stderr)
        return # BREAK!
        # CONTROL! raise
    print(len(text))


main()
