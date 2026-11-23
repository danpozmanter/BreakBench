greeting = "hello"
greeting[0] = "j"  # CONTROL! greeting = "j" + greeting[1:]
print(greeting)
