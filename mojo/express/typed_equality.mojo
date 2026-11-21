# LEVEL: LANGUAGE

def main():
    var id = 42
    if id == 42:
        print("match")
    if id == "42": # REJECT!
        print("text") # REJECT!
