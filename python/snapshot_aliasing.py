def apply_update(weights: list[int]) -> None:
    weights[1] = 5
    weights[3] = 0


weights = [3, 3, 3, 3]
before = weights # CONTROL! before = weights.copy()
apply_update(weights)
print(sum(1 for b, w in zip(before, weights) if b != w))
