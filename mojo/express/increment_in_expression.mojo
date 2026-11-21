# LEVEL: LANGUAGE

def main():
    var i = 0
    i += 1
    i = i++ # REJECT!
    print(i)
