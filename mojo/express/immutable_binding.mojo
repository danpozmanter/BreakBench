# LEVEL: LANGUAGE

def main():
    comptime x = 1
    x = 2  # REJECT!
    print(x)
