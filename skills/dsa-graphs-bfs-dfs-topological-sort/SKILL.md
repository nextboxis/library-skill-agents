---
name: dsa-graphs-bfs-dfs-topological-sort
description: Use this skill when traversing network graphs, finding shortest paths in unweighted graphs, detecting cycles, or determining build orders.
---
# DSA: Graphs, BFS, DFS & Topological Sort

## When to use
Use this skill when modeling course schedules with prerequisites, package dependency resolution, connected components, or grid maze shortest path problems.

## Core principles
- **Graph Representation Choice**: Adjacency lists (`dict[int, list[int]]`) offer O(V + E) space and traversal efficiency compared to O(V^2) adjacency matrices.
- **Visited State Invariants**: Always mark a node as `visited` immediately upon pushing to the queue in BFS to avoid duplicate enqueueing and memory exhaustion.
- **Kahn's Algorithm (BFS Topological Sort)**: Nodes with in-degree 0 have no dependencies. Process them first, decrement neighbor in-degrees, and repeat. If processed count != V, a cycle exists.
- **3-State DFS Cycle Detection**: Unvisited (0), Currently in Recursion Stack (1), Fully Explored (2). Finding a neighbor in state 1 confirms a directed cycle.

## Step-by-step workflow
1. Parse edges into an adjacency list and compute in-degrees if directed.
2. For topological sort: enqueue all nodes with `in_degree == 0`.
3. While queue non-empty: pop node, append to topological order, decrement neighbor in-degrees.
4. If neighbor in-degree reaches 0, push to queue.
5. Verify cycle condition: if `len(order) != total_nodes`, return cycle detected.
6. For unweighted shortest path: use standard BFS tracking step distances.

## Specifics & examples
```python
from collections import deque, defaultdict

def find_order(num_courses: int, prerequisites: list[list[int]]) -> list[int]:
    adj = defaultdict(list)
    in_degree = [0] * num_courses
    for dest, src in prerequisites:
        adj[src].append(dest)
        in_degree[dest] += 1
    q = deque([i for i in range(num_courses) if in_degree[i] == 0])
    order = []
    while q:
        node = q.popleft()
        order.append(node)
        for neighbor in adj[node]:
            in_degree[neighbor] -= 1
            if in_degree[neighbor] == 0: q.append(neighbor)
    return order if len(order) == num_courses else []
```

## Common mistakes & pitfalls
- Forgetting to check for cycles in dependency graphs, leading to partial or infinite loops.
- Marking nodes visited on pop instead of on push in BFS, causing exponential queue explosion.
- Assuming BFS finds shortest paths in graphs with weighted edges.

## Verification checklist
- [ ] Adjacency list is constructed in O(V + E) time.
- [ ] Cycle detection is validated by checking total processed nodes.
- [ ] Nodes are marked visited upon enqueueing to prevent duplicates.

## Related skills
- dsa-graphs-dijkstra-shortest-path-union-find
- dsa-trees-binary-search-tree-dfs-bfs
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
