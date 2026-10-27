---
name: dsa-graphs-dijkstra-shortest-path-union-find
description: Use this skill when computing shortest paths in weighted non-negative graphs and managing dynamic connectivity with Union-Find.
---
# DSA: Dijkstra's Algorithm & Disjoint Set Union (Union-Find)

## When to use
Use this skill for network routing, minimum spanning trees (Kruskal's), dynamic connected components, or finding shortest transit times with non-negative edge weights.

## Core principles
- **Dijkstra's Greedy Invariant**: Extends paths from the node with the currently shortest known distance via a min-heap. Guarantees optimal distance once a node is popped, provided all weights >= 0.
- **Lazy Deletion in Dijkstra**: When pushing improved distances to the priority queue, check `if d > dist[u]: continue` on pop to bypass stale heap entries in O(E log V) time.
- **Union-Find Optimizations**: Path compression flattens the parent tree on `find`, and union-by-rank balances tree depth, resulting in near-constant amortized `O(alpha(N))` operations.
- **Cycle Detection in Undirected Graphs**: If `find(u) == find(v)` prior to uniting an edge `(u, v)`, that edge completes a cycle.

## Step-by-step workflow
1. For Dijkstra: initialize `dist = {node: inf}`, set `dist[start] = 0`, push `(0, start)` to min-heap.
2. While heap: pop `(curr_d, u)`. If `curr_d > dist[u]`, discard.
3. Relax edges: for neighbor `v, weight` in `adj[u]`: if `curr_d + weight < dist[v]`, update `dist[v]` and push `(new_d, v)`.
4. For Union-Find: implement `find(x)` with path compression `parent[x] = find(parent[x])`.
5. Implement `union(x, y)` attaching lower rank root to higher rank root.
6. Return computed distances or connected component counts.

## Specifics & examples
```python
# Union-Find with Path Compression and Union by Rank
class UnionFind:
    def __init__(self, n: int):
        self.parent = list(range(n))
        self.rank = [1] * n
    def find(self, x: int) -> int:
        if self.parent[x] != x:
            self.parent[x] = self.find(self.parent[x])  # path compression
        return self.parent[x]
    def union(self, x: int, y: int) -> bool:
        rx, ry = self.find(x), self.find(y)
        if rx == ry: return False
        if self.rank[rx] < self.rank[ry]: rx, ry = ry, rx
        self.parent[ry] = rx
        if self.rank[rx] == self.rank[ry]: self.rank[rx] += 1
        return True
```

## Common mistakes & pitfalls
- Applying Dijkstra to graphs with negative weights (use Bellman-Ford instead).
- Omitting stale entry check (`if d > dist[u]: continue`) in Dijkstra, causing unnecessary branch traversals.
- Forgetting path compression in Union-Find, degrading operations to O(N).

## Verification checklist
- [ ] Dijkstra skips stale heap entries using `d > dist[u]`.
- [ ] Union-Find implements path compression and union-by-rank.
- [ ] Confirmed all edge weights are strictly non-negative before applying Dijkstra.

## Related skills
- dsa-graphs-bfs-dfs-topological-sort
- dsa-heaps-priority-queues-top-k-elements
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
