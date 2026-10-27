---
name: dsa-trees-binary-search-tree-dfs-bfs
description: Use this skill when traversing, validating, serializing, or balancing binary trees and binary search trees using recursion and queues.
---
# DSA: Trees, Binary Search Trees, DFS & BFS

## When to use
Use this skill in technical interviews when computing maximum depth, lowest common ancestor (LCA), tree diameter, BST validation, or level-order hierarchy traversals.

## Core principles
- **Recursive Sub-problem Formulation**: Every tree problem can be broken down into: solve for `root.left`, solve for `root.right`, combine results at `root`.
- **BST Invariant Range Passing**: Validating a BST cannot be done by checking `node.left.val < node.val < node.right.val` locally. You must pass down valid range boundaries `(min_val, max_val)`.
- **BFS Queue Snapshotting**: In level-order BFS, taking `level_size = len(queue)` before the loop processes exactly one horizontal tree level per iteration.
- **Call Stack Space Awareness**: Even recursive DFS with zero extra variables consumes O(H) space on the execution call stack, where H is tree height (O(N) worst-case in skewed trees).

## Step-by-step workflow
1. Base case check: handle `if not root: return default`.
2. Decide DFS vs BFS: shortest path/level structure -> BFS (`collections.deque`); depth/path sums/ancestors -> DFS.
3. If BST validation: pass `(lower_bound, upper_bound)` recursively.
4. If level-order BFS: pop `len(q)` elements per level and append to results.
5. Return combined left/right results or level list.

## Specifics & examples
```python
# Validate Binary Search Tree: O(N) Time, O(H) Auxiliary Stack Space
def is_valid_bst(root) -> bool:
    def validate(node, low=float('-inf'), high=float('inf')):
        if not node:
            return True
        if not (low < node.val < high):
            return False
        return (validate(node.left, low, node.val) and
                validate(node.right, node.val, high))
    return validate(root)
```

## Common mistakes & pitfalls
- Only comparing a node to its immediate children rather than respecting global ancestral bounds in BSTs.
- Using a Python list as a queue (`pop(0)` is O(N)) instead of `collections.deque` (`popleft()` is O(1)).
- Forgetting that recursive DFS can cause stack overflow on unbalanced skewed trees.

## Verification checklist
- [ ] Base case (`if not node`) is handled at the start of recursion.
- [ ] Level-order traversal uses `collections.deque` with `popleft()`.
- [ ] BST validation enforces global lower and upper bounds.

## Related skills
- dsa-graphs-bfs-dfs-topological-sort
- dsa-trie-prefix-tree-autocomplete-search
- dsa-heaps-priority-queues-top-k-elements
- coding-interview-communication-thinking-out-loud
