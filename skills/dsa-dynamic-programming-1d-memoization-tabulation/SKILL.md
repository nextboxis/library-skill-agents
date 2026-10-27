---
name: dsa-dynamic-programming-1d-memoization-tabulation
description: Use this skill when solving optimization, counting, and decision problems by breaking them into overlapping 1D sub-problems.
---
# DSA: 1D Dynamic Programming, Memoization & Tabulation

## When to use
Use this skill when tackling classic interview problems like Climbing Stairs, Coin Change, House Robber, Decode Ways, or Longest Increasing Subsequence.

## Core principles
- **Optimal Substructure**: The optimal solution to the problem can be constructed from optimal solutions of its sub-problems.
- **Overlapping Sub-problems**: Recursive decomposition encounters the same sub-problems repeatedly, allowing caching (memoization) or bottom-up calculation (tabulation).
- **State Definition Clarity**: Define precisely what `dp[i]` represents before writing code (e.g., 'minimum coins to make amount `i`').
- **Space Optimization Rolling Variables**: If `dp[i]` depends only on `dp[i-1]` and `dp[i-2]`, eliminate the O(N) array in favor of two variables for O(1) space.

## Step-by-step workflow
1. Define the recurrence relation and exact state meaning of `dp[i]`.
2. Identify base cases (e.g., `dp[0] = 0` or `dp[0] = 1`).
3. Choose approach: top-down with memoization (`@functools.lru_cache`) or bottom-up tabulation.
4. Fill table iteratively from smallest sub-problems to target `N`.
5. Apply space optimization if previous states allow rolling updates.
6. Trace a small test case (e.g., `amount = 5`) manually out loud.

## Specifics & examples
```python
# Coin Change (Fewest coins to make amount): O(amount * len(coins)) Time
def coin_change(coins: list[int], amount: int) -> int:
    dp = [float('inf')] * (amount + 1)
    dp[0] = 0
    for i in range(1, amount + 1):
        for coin in coins:
            if i - coin >= 0:
                dp[i] = min(dp[i], dp[i - coin] + 1)
    return dp[amount] if dp[amount] != float('inf') else -1
```

## Common mistakes & pitfalls
- Failing to initialize DP array with appropriate identity values (`inf` for min, `-inf` for max).
- Off-by-one errors in allocating `dp` table size (`amount` vs `amount + 1`).
- Struggling to communicate the state transition equation to the interviewer before coding.

## Verification checklist
- [ ] State definition `dp[i]` is explicitly stated to the interviewer.
- [ ] Handled impossible targets (returning -1).
- [ ] Analyzed space optimization from O(N) to O(1) when applicable.

## Related skills
- dsa-dynamic-programming-2d-knapsack-lcs
- dsa-greedy-algorithms-interval-scheduling
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
