---
name: dsa-dynamic-programming-2d-knapsack-lcs
description: Use this skill when solving 2D grid traversals, 0/1 knapsack, edit distance, and longest common subsequence problems.
---
# DSA: 2D Dynamic Programming, Knapsack & LCS

## When to use
Use this skill during technical interviews when sub-problems depend on two changing parameters (e.g., item index and remaining weight, or string pointers `i` and `j`).

## Core principles
- **2D State Formulation**: Define `dp[i][j]` unambiguously (e.g., LCS: length of longest common subsequence of `s1[0..i]` and `s2[0..j]`).
- **Match vs Mismatch Transitions**: If characters match, `dp[i][j] = 1 + dp[i-1][j-1]`. If mismatch, take `max(dp[i-1][j], dp[i][j-1])`.
- **0/1 Knapsack Reverse Traversal**: When compressing 2D knapsack DP to 1D, traverse capacity in reverse from `W` down to `weight` to avoid using the same item twice.
- **Boundary Row & Column Invariants**: Always allocate `(m + 1) x (n + 1)` matrices so row 0 and column 0 serve as empty-string or zero-capacity base cases.

## Step-by-step workflow
1. Establish state parameters: length of string 1 (`m`) and string 2 (`n`), or items and capacity.
2. Allocate `(m+1) x (n+1)` grid initialized to base values.
3. Fill row 0 and column 0 with appropriate boundary conditions.
4. Iterate nested loops from 1 to `m` and 1 to `n`.
5. Apply state transitions based on character match or item inclusion.
6. Return bottom-right cell `dp[m][n]`.

## Specifics & examples
```python
# Longest Common Subsequence: O(M * N) Time, O(M * N) Space
def longest_common_subsequence(text1: str, text2: str) -> int:
    m, n = len(text1), len(text2)
    dp = [[0] * (n + 1) for _ in range(m + 1)]
    for i in range(1, m + 1):
        for j in range(1, n + 1):
            if text1[i - 1] == text2[j - 1]:
                dp[i][j] = 1 + dp[i - 1][j - 1]
            else:
                dp[i][j] = max(dp[i - 1][j], dp[i][j - 1])
    return dp[m][n]
```

## Common mistakes & pitfalls
- Creating 2D arrays via `[[0] * n] * m`, which duplicates row references in Python.
- Forgetting to offset indices when accessing strings (`text1[i-1]` vs `text1[i]`).
- In 0/1 Knapsack 1D compression, iterating forwards, which turns it into Unbounded Knapsack.

## Verification checklist
- [ ] 2D grid allocated using independent row comprehension.
- [ ] String indices properly offset by -1 against 1-indexed DP table.
- [ ] Time and space complexities stated clearly as O(M * N).

## Related skills
- dsa-dynamic-programming-1d-memoization-tabulation
- dsa-backtracking-subsets-permutations-n-queens
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
