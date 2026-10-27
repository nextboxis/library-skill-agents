---
name: dsa-time-space-complexity-big-o-analysis
description: Use this skill when rigorously analyzing algorithm asymptotic runtime, call stack memory, and auxiliary space for technical interviews.
---
# DSA: Time & Space Complexity Big-O Analysis

## When to use
Use this skill during every interview step when evaluating trade-offs, defending algorithmic choices, calculating worst-case vs average-case behavior, and identifying bottlenecks.

## Core principles
- **Asymptotic Upper Bound (Big-O)**: Describes how execution time or memory scales as input size `N` approaches infinity, discarding constant coefficients and lower-order terms.
- **Auxiliary Space vs Total Space**: Auxiliary space is memory allocated exclusively by the algorithm; total space includes input memory. Clearly state which one you are quoting.
- **Call Stack Accounting**: Recursive algorithms consume stack space proportional to maximum recursion depth (e.g., balanced tree DFS is O(log N) stack space, skewed tree is O(N)).
- **Amortized Analysis**: An operation that occasionally takes O(N) time but occurs after N - 1 operations of O(1) time has an amortized cost of O(1) (e.g., dynamic array resizing).

## Step-by-step workflow
1. Count dominant loop operations in terms of variable inputs (N, M, K).
2. Analyze recursion tree depth and per-level work.
3. State worst-case and average-case runtimes explicitly (e.g., QuickSort: average O(N log N), worst O(N^2)).
4. Account for all auxiliary structures (hash maps, recursion call stack, queues).
5. Articulate trade-offs to the interviewer: 'We reduced time from O(N^2) to O(N) by spending O(N) auxiliary space'.

## Specifics & examples
- **Complexity Reference Hierarchy**:
  - `O(1)`: Hash map lookup, stack push/pop, bitwise operations.
  - `O(log N)`: Binary search, balanced BST operations.
  - `O(N)`: Single-pass iteration, sliding window, tree DFS/BFS traversal.
  - `O(N log N)`: Merge sort, heap sort, interval sorting.
  - `O(N^2)`: Nested loops, bubble sort, naive all-pairs search.
  - `O(2^N)`: Subset backtracking, naive recursive Fibonacci.
  - `O(N!)`: Permutations generation, brute force Traveling Salesperson.

## Common mistakes & pitfalls
- Confusing auxiliary space with input space.
- Ignoring call stack memory in recursive functions.
- Assuming two nested loops are always O(N^2) without checking inner loop step jumps (e.g., binary search inside loop is O(N log M)).

## Verification checklist
- [ ] Stated both time and auxiliary space complexity before writing code.
- [ ] Explained difference between average case and worst case when relevant.
- [ ] Included recursion stack depth in memory analysis.

## Related skills
- coding-interview-communication-thinking-out-loud
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-trees-binary-search-tree-dfs-bfs
- dsa-dynamic-programming-1d-memoization-tabulation
