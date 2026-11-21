# LEVEL: LANGUAGE

try:
    int(float("nan"))
    print("fits")
except ValueError:
    print("does not fit")
