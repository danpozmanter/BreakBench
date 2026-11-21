# LEVEL: STD

import weakref


class Node:
    pass


strong = Node()
weak = weakref.ref(strong)
del strong
print("gone" if weak() is None else "alive")
