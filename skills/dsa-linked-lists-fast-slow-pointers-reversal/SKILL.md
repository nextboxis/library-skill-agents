---
name: dsa-linked-lists-fast-slow-pointers-reversal
description: Use this skill when traversing, reversing, merging, or detecting cycles in singly and doubly linked list data structures.
---
# DSA: Linked Lists, Fast & Slow Pointers & In-Place Reversal

## When to use
Use this skill in technical interviews when asked to find list midpoints, detect cycles (Floyd's algorithm), reverse linked nodes in-place without auxiliary arrays, or merge sorted lists.

## Core principles
- **Dummy Head Pattern**: Introducing a sentinel `dummy = ListNode(0, head)` eliminates edge-case conditionals for inserting or deleting the head node.
- **Floyd's Cycle-Finding Algorithm (Tortoise & Hare)**: If a cycle exists, a fast pointer advancing 2 steps will inevitably meet a slow pointer advancing 1 step within `O(N)` steps without extra memory.
- **Pointer Dereferencing Safeguards**: Always check `fast and fast.next` before evaluating `fast.next.next` to avoid `NullPointerException` or `AttributeError`.
- **Preserving Detached References**: Before reassigning `curr.next`, always cache `next_temp = curr.next` to prevent losing the remainder of the list into garbage collection.

## Step-by-step workflow
1. Instantiate a sentinel dummy node when head modification or merging is possible.
2. For midpoint or cycle detection: initialize `slow = head, fast = head`.
3. Traverse while `fast and fast.next`: advance `slow = slow.next`, `fast = fast.next.next`.
4. For in-place reversal: initialize `prev = None, curr = head`.
5. Iterate: `temp = curr.next; curr.next = prev; prev = curr; curr = temp`.
6. Return the updated head node (`prev` in reversal, `dummy.next` in merge/delete).

## Specifics & examples
```python
# In-Place Singly Linked List Reversal: O(N) Time, O(1) Auxiliary Space
class ListNode:
    def __init__(self, val=0, next=None):
        self.val = val
        self.next = next

def reverse_list(head: ListNode) -> ListNode:
    prev, curr = None, head
    while curr:
        nxt = curr.next
        curr.next = prev
        prev = curr
        curr = nxt
    return prev
```

## Common mistakes & pitfalls
- Losing the pointer to the rest of the list before completing the node redirection.
- Failing to handle single-node lists or empty lists (`head is None`).
- Infinite loops caused by failing to set the old head's `next` pointer to `None` in circular conversions.

## Verification checklist
- [ ] Code runs with zero auxiliary space allocation (O(1) space).
- [ ] Dummy head is used when deleting or inserting at the head boundary.
- [ ] Cycle detection loop explicitly checks `fast and fast.next`.

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-stacks-queues-monotonic-stack-patterns
- coding-interview-communication-thinking-out-loud
- dsa-trees-binary-search-tree-dfs-bfs
