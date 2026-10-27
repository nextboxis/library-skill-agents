---
name: dsa-greedy-algorithms-interval-scheduling
description: Use this skill when making locally optimal choices to solve interval scheduling, non-overlapping intervals, and meeting room problems.
---
# DSA: Greedy Algorithms & Interval Scheduling

## When to use
Use this skill when tasked with scheduling meetings, merging overlapping time blocks, finding minimum arrows to burst balloons, or gas station tour puzzles.

## Core principles
- **The Greedy Choice Property**: A globally optimal solution can be achieved by selecting locally optimal choices without re-evaluating past decisions.
- **Interval Sorting Heuristics**: Meeting room overlap problems sort by *start time*; maximum non-overlapping scheduling problems sort by *end time*.
- **Continuous Invariant Tracking**: Maintain a running boundary (e.g., `last_end_time`) to determine whether the next interval overlaps or can be cleanly accommodated.
- **When Greedy Fails**: Verify with the interviewer that the problem exhibits greedy choice property rather than requiring global DP optimization (like 0/1 knapsack).

## Step-by-step workflow
1. Sort intervals based on required criteria (`x[0]` for merge/start; `x[1]` for earliest deadline/end).
2. Initialize tracking variables (`merged_intervals = [intervals[0]]` or `last_end = intervals[0][1]`).
3. Iterate through sorted intervals from index 1.
4. Compare `current.start` with `last.end`: if overlapping, merge `last.end = max(last.end, current.end)` or count collision.
5. If non-overlapping, append interval or update `last_end`.
6. Return merged collection or count.

## Specifics & examples
```python
# Merge Overlapping Intervals: O(N log N) Time, O(N) Space
def merge_intervals(intervals: list[list[int]]) -> list[list[int]]:
    if not intervals:
        return []
    intervals.sort(key=lambda x: x[0])
    merged = [intervals[0]]
    for start, end in intervals[1:]:
        last_end = merged[-1][1]
        if start <= last_end:
            merged[-1][1] = max(last_end, end)
        else:
            merged.append([start, end])
    return merged
```

## Common mistakes & pitfalls
- Assuming intervals are pre-sorted without verifying with the interviewer.
- Using `start < last_end` instead of `start <= last_end` when touching intervals must be merged.
- Sorting by start time when the problem requires scheduling maximum independent events (requires sorting by end time).

## Verification checklist
- [ ] Explicitly sorted input intervals prior to greedy iteration.
- [ ] Correctly identified whether sorting by start time or end time is required.
- [ ] Handled edge case where intervals touch at boundaries.

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-heaps-priority-queues-top-k-elements
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
