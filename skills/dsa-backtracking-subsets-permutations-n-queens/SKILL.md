---
name: dsa-backtracking-subsets-permutations-n-queens
description: Use this skill when exploring exhaustive decision spaces, generating permutations, combinations, or solving constraint satisfaction puzzles.
---
# DSA: Backtracking, Subsets, Permutations & N-Queens

## When to use
Use this skill when the problem demands finding all possible valid configurations, subsets, combinations, anagrams, or solving Sudoku and N-Queens puzzles.

## Core principles
- **Choose, Explore, Unchoose Pattern**: Append choice to state path, make recursive call, and explicitly revert the state (pop choice) upon return.
- **Pruning (Branch & Bound)**: Abandon fruitless search branches immediately via conditional checks before descending into recursive depth.
- **Duplicate Handling via Sorting**: To avoid generating duplicate subsets/combinations, sort the input first and skip adjacent duplicates: `if i > start and nums[i] == nums[i-1]: continue`.
- **Base Case Return Guarantees**: Always append a copy of the path `results.append(path[:])` rather than the mutable reference `path`.

## Step-by-step workflow
1. Sort input array if permutations/combinations contain duplicates.
2. Define `backtrack(start_index, current_path)` helper function.
3. Specify base condition: if valid state reached, `result.append(list(current_path))` and return.
4. Loop over candidates from `start_index` to `len(candidates)`.
5. Apply pruning conditions (skip duplicates or invalid placements).
6. Execute: `current_path.append(cand)` -> `backtrack(...)` -> `current_path.pop()`.

## Specifics & examples
```python
# Subsets with Duplicates (O(2^N) Time, O(N) Call Stack Space)
def subsets_with_dup(nums: list[int]) -> list[list[int]]:
    nums.sort()
    res, path = [], []
    def backtrack(start: int):
        res.append(list(path))
        for i in range(start, len(nums)):
            if i > start and nums[i] == nums[i - 1]:
                continue  # skip duplicate choices at same level
            path.append(nums[i])
            backtrack(i + 1)
            path.pop()  # revert state
    backtrack(0)
    return res
```

## Common mistakes & pitfalls
- Appending `res.append(path)` without copying, leaving all entries empty when backtracking finishes.
- Forgetting to pop from `path`, corrupting state across siblings.
- Failing to sort before pruning duplicates in combination sum problems.

## Verification checklist
- [ ] Result array stores detached copies (`path[:]` or `list(path)`).
- [ ] State is strictly reverted after each recursive invocation.
- [ ] Duplicate choices pruned cleanly using sorted adjacency checks.

## Related skills
- dsa-dynamic-programming-1d-memoization-tabulation
- dsa-trees-binary-search-tree-dfs-bfs
- coding-interview-communication-thinking-out-loud
- dsa-time-space-complexity-big-o-analysis
