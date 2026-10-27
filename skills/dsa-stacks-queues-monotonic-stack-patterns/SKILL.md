---
name: dsa-stacks-queues-monotonic-stack-patterns
description: Use this skill when solving Next Greater Element, largest rectangle in histogram, daily temperatures, or sliding window extrema.
---
# DSA: Stacks, Queues & Monotonic Stack Patterns

## When to use
Use this skill in algorithmic interviews when an O(N^2) comparison can be optimized to linear O(N) by maintaining an invariant of strictly increasing or decreasing elements.

## Core principles
- **Monotonic Invariant**: A monotonic decreasing stack stores elements such that every newly pushed element is smaller than or equal to the previous element, popping smaller elements when a larger candidate arrives.
- **Amortized Linear Complexity**: Even though there is a `while` loop inside the `for` loop, each element is pushed and popped at most once, guaranteeing total amortized O(N) runtime.
- **Index Storage**: Always store indices in the stack rather than raw values to simultaneously track both value and positional distance.
- **Sentinels for Histogram Cleanup**: Appending a 0-height sentinel to the end of heights array forces the remaining elements in the stack to pop cleanly.

## Step-by-step workflow
1. Recognize the problem signature: finding the nearest greater/smaller element to the left or right.
2. Choose monotonic orientation: decreasing stack for Next Greater Element; increasing stack for Next Smaller Element.
3. Initialize `stack = []` and `result = [-1] * len(arr)`.
4. Iterate through array: while stack is non-empty and `arr[i] > arr[stack[-1]]`, pop index and record result.
5. Push current index `i` onto the stack.
6. Return the populated result array.

## Specifics & examples
```python
# Next Greater Element (O(N) Time, O(N) Space)
def daily_temperatures(temperatures: list[int]) -> list[int]:
    res = [0] * len(temperatures)
    stack = []  # indices of monotonic decreasing temps
    for i, temp in enumerate(temperatures):
        while stack and temp > temperatures[stack[-1]]:
            prev_idx = stack.pop()
            res[prev_idx] = i - prev_idx
        stack.append(i)
    return res
```

## Common mistakes & pitfalls
- Storing raw values instead of indices, making it impossible to compute distances.
- Incorrect comparison operator (`>` vs `>=`), leading to duplicate element bugs.
- Assuming nested loops imply O(N^2) when explaining time complexity to the interviewer.

## Verification checklist
- [ ] Stack stores indices to calculate relative distances.
- [ ] Explains amortized O(N) runtime clearly to the interviewer.
- [ ] Handled strictly decreasing or strictly increasing inputs.

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-greedy-algorithms-interval-scheduling
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
