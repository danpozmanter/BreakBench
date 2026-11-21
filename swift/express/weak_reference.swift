// LEVEL: LANGUAGE

final class Node {}

var strong: Node? = Node()
weak var weakRef = strong
strong = nil
print(weakRef == nil ? "gone" : "alive")
