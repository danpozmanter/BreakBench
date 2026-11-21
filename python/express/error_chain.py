# LEVEL: LANGUAGE

try:
    try:
        raise FileNotFoundError("not found")
    except FileNotFoundError as cause:
        raise RuntimeError("loading config: not found") from cause
except RuntimeError as e:
    print(e)
    print(e.__cause__)
