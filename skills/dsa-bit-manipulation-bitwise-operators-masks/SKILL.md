---
name: dsa-bit-manipulation-bitwise-operators-masks
description: Use this skill when solving algorithmic challenges using XOR, bit shifts, two's complement, and bitmask state representations.
---
# DSA: Bit Manipulation, Bitwise Operators & Masks

## When to use
Use this skill for finding single non-duplicate numbers, counting set bits (Hamming weight), subset enumeration via bitmasks, or checking power of two in O(1).

## Core principles
- **XOR Self-Inverse Property**: `x ^ x = 0` and `x ^ 0 = x`. XORing all array elements isolates the single unpaired number in O(N) time and O(1) space.
- **Clearing the Lowest Set Bit (Brian Kernighan)**: `n & (n - 1)` directly zeroes out the least significant set bit. A number is a power of 2 if `n > 0 and (n & (n - 1)) == 0`.
- **Extracting the Lowest Set Bit**: `n & (-n)` isolates the lowest set bit using two's complement arithmetic.
- **Bitmask as Compact Set**: An integer can represent subsets of up to 30 elements where the `i`-th bit denotes inclusion, enabling O(1) union, intersection, and membership tests.

## Step-by-step workflow
1. Identify bit manipulation signatures: finding odd-frequency elements, checking subsets, counting set bits.
2. Select appropriate operator: `^` for parity cancellation, `&` for masking, `|` for set union, `~` for inversion.
3. Apply `n & (n - 1)` in a loop to count set bits in O(k) steps where k is number of 1s.
4. For bitmask DP: iterate through state integers from `0` to `(1 << n) - 1`.
5. State time and space complexity: typically O(1) auxiliary space.

## Specifics & examples
```python
# Hamming Weight (Number of 1 Bits): O(k) Time where k is count of 1s
def hamming_weight(n: int) -> int:
    count = 0
    while n:
        n &= (n - 1)  # drop lowest set bit
        count += 1
    return count

# Single Number: Find unique element where all others appear twice
def single_number(nums: list[int]) -> int:
    res = 0
    for x in nums:
        res ^= x
    return res
```

## Common mistakes & pitfalls
- Operator precedence confusion: `==` has higher precedence than `&` in Python (`n & 1 == 0` evaluates as `n & (1 == 0)`).
- Forgetting sign extension behavior with negative numbers in languages like Java (`>>` vs `>>>`).
- Trying to use bitmasking on sets larger than 64 elements without a bitset library.

## Verification checklist
- [ ] Parentheses explicitly surround bitwise operations when combined with equality checks.
- [ ] Power of two check includes `n > 0` guard.
- [ ] Demonstrated understanding of O(1) auxiliary space advantage.

## Related skills
- dsa-arrays-hashing-two-pointers-sliding-window
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
- dsa-dynamic-programming-1d-memoization-tabulation
