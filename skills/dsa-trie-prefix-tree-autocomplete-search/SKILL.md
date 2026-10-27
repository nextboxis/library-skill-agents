---
name: dsa-trie-prefix-tree-autocomplete-search
description: Use this skill when implementing fast string prefix lookups, dictionary validations, autocomplete suggestions, and word searches.
---
# DSA: Trie (Prefix Tree) & Autocomplete Search

## When to use
Use this skill in technical interviews when required to implement autocomplete engines, spell checkers, prefix finders, or 2D grid Boggle/Word Search puzzles.

## Core principles
- **Prefix Sharing**: A Trie stores characters across shared path edges, allowing word and prefix lookups in O(L) time where L is word length, independent of dictionary size N.
- **Node Structure**: Each node contains a map/array of child nodes `children = {}` and a boolean marker `is_end_of_word = False`.
- **Space Trade-off**: High prefix overlap yields significant memory savings over hash sets; sparse unique strings consume higher pointer overhead.
- **Backtracking Integration**: In Boggle/Word Search II, traversing a Trie simultaneously with grid DFS prunes entire invalid search branches instantly.

## Step-by-step workflow
1. Define `TrieNode` class with `children = {}` and `is_end = False`.
2. Implement `insert(word)`: traverse character by character, creating new nodes as needed; mark terminal node `is_end = True`.
3. Implement `search(word)`: traverse; return `node.is_end` if all characters match.
4. Implement `starts_with(prefix)`: traverse; return `True` if prefix path exists.
5. Walk through sample words (e.g., 'app', 'apple') illustrating node reuse.

## Specifics & examples
```python
class TrieNode:
    def __init__(self):
        self.children = {}
        self.is_end = False

class Trie:
    def __init__(self):
        self.root = TrieNode()
    def insert(self, word: str) -> None:
        curr = self.root
        for ch in word:
            if ch not in curr.children: curr.children[ch] = TrieNode()
            curr = curr.children[ch]
        curr.is_end = True
    def search(self, word: str) -> bool:
        curr = self.root
        for ch in word:
            if ch not in curr.children: return False
            curr = curr.children[ch]
        return curr.is_end
```

## Common mistakes & pitfalls
- Returning `True` on `search()` when reaching the end of the string even if `is_end == False`.
- Using a fixed 26-element array when unicode or case-sensitive characters are expected.
- Failing to prune empty leaf nodes during deletion in production Tries.

## Verification checklist
- [ ] Prefix search returns True regardless of `is_end` flag.
- [ ] Exact search strictly validates `is_end == True`.
- [ ] Time complexity is clearly stated as O(L) where L is string length.

## Related skills
- dsa-backtracking-subsets-permutations-n-queens
- dsa-trees-binary-search-tree-dfs-bfs
- dsa-time-space-complexity-big-o-analysis
- coding-interview-communication-thinking-out-loud
