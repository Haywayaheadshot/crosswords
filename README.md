# A Crossword Puzzle

This challenge should be solved using Ruby, but you can use another programming language if you prefer.

## Remember

Showcase your computer science knowledge, coding skill, and attention to details

The most important thing is to have a completed, working, and correct implementation first

If possible reduce space/time complexity

## The following resources are allowed

- Wikipedia
- Programming Language documentation
- Coding tutorial
- Books
- Inclusion (within the solution) external libraries. However, be prepare to defend your decision

## The following resources are NOT allowed

- The help of another person
- The help of an AI program (unless you wrote the AI from scratch to solve this problem)
- Solutions (or partial solutions) found online or in printed materials that is solved by someone else

## Overview

Complete the `CrossWords.intersect` method that returns a single string result.

Each input is expected to be a single word, consisting of only letters a-z

## The class attempts to

Locate the earliest possible intersection of characters between the two words & crosses both words on the above intersection

The first word is to be rendered horizontally; while the second, vertically.
The results are returned as a single string

## Input & Output Examples

cat & hat:

```text
 h
cat
 t
```

balloon & bat

```text
balloon
a
t
```

faint & test

```text
faint
    e
    s
    t
```

road & dad

```text
  d
road
  d
```

dad & road

```text
 r
 o
dad
 d
```
