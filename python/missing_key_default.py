import sys

stock = {"apple": 3, "plum": 4}
name = sys.argv[1]
print(stock[name] + 5) # CONTROL! print(stock[name] + 5 if name in stock else "unknown")
