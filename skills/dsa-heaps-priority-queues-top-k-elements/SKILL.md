---
name: dsa-heaps-priority-queues-top-k-elements
description: Use this skill when finding Top-K elements, streaming running medians, merging K sorted lists, or task scheduling with priority queues.
---
# DSA: Heaps, Priority Queues & Top-K Elements

## When to use
Use this skill when an interview problem requires continuous access to minimum or maximum values while streaming data, or requires reducing O(N log N) sorting to O(N log K).

## Core principles
- **Min-Heap vs Max-Heap for Top-K**: To find the Top-K *largest* elements, maintain a *min-heap* of size K. When a new element exceeds the heap root, pop the minimum and push the new element.
- **Two-Heap Median Pattern**: Split incoming streams into two balanced heaps: a max-heap for the lower half and a min-heap for the upper half, allowing O(1) median access.
- **Tuple Storage for Object Tie-breaking**: When storing custom objects or nodes in Python's `heapq`, include a unique counter in the tuple `(priority, counter, object)` to avoid object comparison errors.
- **Heapify Complexity**: Building a heap from an unsorted list in-place via `heapq.heapify(nums)` takes linear O(N) time, not O(N log N).

## Step-by-step workflow
1. Import standard heap module (e.g., `import heapq`).
2. Identify problem requirement: K largest -> min-heap of size K; K smallest -> max-heap of size K.
3. If Python (default min-heap) and max-heap is needed: negate values (`-val`).
4. Maintain heap size constraint: if `len(heap) > k: heapq.heappop(heap)`.
5. Return remaining heap elements or root value.

## Specifics & examples
```python
import heapq
from collections import Counter

def top_k_frequent(nums: list[int], k: int) -> list[int]:
    count = Counter(nums)
    # Min-heap of size k storing (frequency, number)
    heap = []
    for num, freq in count.items():
        heapq.heappush(heap, (freq, num))
        if len(heap) > k:
            heapq.heappop(heap)
    return [num for freq, num in heap]
```

## Common mistakes & pitfalls
- Using a max-heap of size N instead of a min-heap of size K, wasting memory.
- Sorting the entire array in O(N log N) when only top K elements were requested.
- Failing to invert signs in Python when simulating a max-heap.

## Verification checklist
- [ ] Used min-heap of size K to find Top-K largest items in O(N log K) time.
- [ ] Python heapq tuples include tie-breaking keys when objects lack `<` operator.
- [ ] Memory overhead is bounded strictly to O(K).

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-greedy-algorithms-interval-scheduling
- dsa-graphs-dijkstra-shortest-path-union-find
- dsa-time-space-complexity-big-o-analysis
