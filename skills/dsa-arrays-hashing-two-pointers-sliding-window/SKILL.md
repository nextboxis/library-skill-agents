---
name: dsa-arrays-hashing-two-pointers-sliding-window
description: Use this skill when tackling array and string algorithmic challenges using hash maps, two pointers, and dynamic sliding windows.
---
# DSA: Arrays, Hashing, Two Pointers & Sliding Window

## When to use
Use this skill during technical coding interviews, competitive programming, or real-time data stream processing where sub-arrays, string anagrams, target sums, or contiguous windows must be analyzed in O(N) linear time.

## Core principles
- **Space-Time Trade-off via Hashing**: Trading O(N) memory for an instantaneous O(1) average lookup eliminates nested O(N^2) brute-force scans (e.g., Two Sum complement lookup).
- **Invariant Maintenance**: In two-pointer techniques (converging, fast-slow, or parallel), identify the loop invariant that guarantees pointers only advance and never oscillate.
- **Dynamic vs. Fixed Sliding Windows**: Fixed windows maintain a constant width `k`; dynamic windows expand the right pointer to satisfy a condition and shrink the left pointer to restore validity.
- **Human Anxiety & Edge Case Management**: Under interview pressure, human brains jump directly to code. Resist this: test single-element lists, duplicate elements, empty strings, and negative values before writing line 1.

## Step-by-step workflow
1. Clarify constraints: ask about sorting status, mutation allowances, memory limits, and duplicate entries.
2. Identify problem pattern: target sum pair -> hash map or sorted two-pointer; longest/shortest contiguous substring -> sliding window.
3. State brute force complexity (e.g., O(N^2)) and immediately propose the optimal O(N) approach.
4. Define window state variables (e.g., `left`, `right`, `char_freq_map`, `matched_count`).
5. Execute two-pointer iteration while expanding and contracting.
6. Trace through a 4-element concrete example step-by-step out loud.

## Specifics & examples
```python
# Sliding Window Template (Longest Substring Without Repeating Characters)
def length_of_longest_substring(s: str) -> int:
    seen = {}
    left = max_len = 0
    for right, char in enumerate(s):
        if char in seen and seen[char] >= left:
            left = seen[char] + 1
        seen[char] = right
        max_len = max(max_len, right - left + 1)
    return max_len
```
- **Two Pointers (Converging on Sorted Array)**: `left, right = 0, len(nums) - 1`. If `sum < target: left += 1` else `right -= 1`.

## Common mistakes & pitfalls
- Off-by-one errors in sliding window length calculation (`right - left + 1` vs `right - left`).
- Forgetting to update the left pointer in a hash map when a duplicate is found behind the current left window boundary.
- Using nested loops inside the window expansion without realizing it could degrade to O(N^2) if left pointer resets.

## Verification checklist
- [ ] Time complexity is strictly O(N) and space complexity is explicitly stated (O(1) or O(K)).
- [ ] Handled empty input, single character string, and strings with all identical characters.
- [ ] Two-pointer boundaries prevent index-out-of-bounds exceptions.

## Related skills
- dsa-binary-search-matrix-search-variants
- dsa-stacks-queues-monotonic-stack-patterns
- coding-interview-communication-thinking-out-loud
- dsa-time-space-complexity-big-o-analysis
