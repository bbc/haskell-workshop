module C4SyntaxInFunctions where

-- Pattern Matching

-- finish this fibonaacci function using pattern matching
-- fib 10 should return 89
fib :: Int -> Int
fib 0 = undefined
fib 1 = undefined
fib n = undefined

-- write a safeTail function that returns the tail of a list if it is not empty
-- otherwise returns an empty list, []
-- use pattern matching 
-- (note that the patterns are not filled in like they are in the fib example, you will need to write the patterns yourself)
safeTail :: [String] -> [String]
safeTail = undefined

-- write the reverse function using pattern matching
myReverse :: [a] -> [a]
myReverse = undefined

-- Guards

-- Write a function that takes two Ints and returns 1 if the first one is greater than the second
-- returns 0 if they are equal
-- and returns -1 if the second is greater
-- Use guards - do not use if-statements
-- Something to think about: Why can you not use pattern matching for this?
mySort :: Int -> Int -> Int
mySort a b = undefined

