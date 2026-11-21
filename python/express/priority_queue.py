# LEVEL: STD

import heapq

q = [3, 1, 2]
heapq.heapify(q)
print(heapq.heappop(q), heapq.heappop(q), heapq.heappop(q))
