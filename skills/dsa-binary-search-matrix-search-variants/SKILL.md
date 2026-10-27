---
name: dsa-binary-search-matrix-search-variants
description: Use this skill when searching sorted arrays, rotated arrays, 2D sorted matrices, or continuous monotonic answer spaces in O(log N).
---
# DSA: Binary Search & Matrix Search Variants

## When to use
Use this skill when querying sorted or rotated collections, or when the problem statement asks for the 'minimum maximum' or 'maximum minimum' feasible value (binary search on answer).

## Core principles
- **Search Space Elimination**: Binary search does not require a fully sorted array; it only requires a monotonic predicate where an evaluation at `mid` decisively eliminates half the search space.
- **Integer Overflow Prevention**: Compute midpoint as `mid = low + (high - low) // 2` rather than `(low + high) // 2` to prevent 32-bit integer overflow.
- **Loop Invariant & Boundary Selection**: Standardize on `while low <= high`: when target is not found, `high = mid - 1` and `low = mid + 1`.
- **Virtual Matrix Flattening**: For an `m x n` row-sorted matrix, map index `k` to 2D coordinates via `row = k // n` and `col = k % n`.

## Step-by-step workflow
1. Define the search space boundaries `low` and `high`.
2. For rotated arrays: determine which half is normally sorted (`nums[low] <= nums[mid]`).
3. Check if target lies within the cleanly sorted half; adjust `low` or `high` accordingly.
4. For search on answer: write a helper `is_feasible(mid)` returning boolean.
5. Iterate until `low > high`.
6. Return target index or the optimal boundary.

## Specifics & examples
```python
# Search in Rotated Sorted Array: O(log N) Time, O(1) Space
def search_rotated(nums: list[int], target: int) -> int:
    low, high = 0, len(nums) - 1
    while low <= high:
        mid = low + (high - low) // 2
        if nums[mid] == target:
            return mid
        if nums[low] <= nums[mid]:  # Left half is sorted
            if nums[low] <= target < nums[mid]: high = mid - 1
            else: low = mid + 1
        else:  # Right half is sorted
            if nums[mid] < target <= nums[high]: low = mid + 1
            else: high = mid - 1
    return -1
```

## Common mistakes & pitfalls
- Infinite loops caused by `low = mid` without integer ceiling division.
- Off-by-one errors in boundary adjustments (`high = mid` vs `high = mid - 1`).
- Failing to recognize that 'find the minimum capacity' is a binary search on the answer space.

## Verification checklist
- [ ] Midpoint calculation prevents integer overflow.
- [ ] While loop condition (`low <= high`) guarantees termination.
- [ ] Validated against target not present and array length 1.

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
- dsa-greedy-algorithms-interval-scheduling
