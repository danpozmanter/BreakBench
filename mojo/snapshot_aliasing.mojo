def apply_update(mut weights: List[Int]):
    weights[1] = 5
    weights[3] = 0


def main():
    var weights: List[Int] = [3, 3, 3, 3]
    var before = weights  # BREAK!
    # CONTROL! var before = weights.copy()
    apply_update(weights)
    var changes = 0
    for i in range(len(weights)):
        if before[i] != weights[i]:
            changes += 1
    print(changes)
