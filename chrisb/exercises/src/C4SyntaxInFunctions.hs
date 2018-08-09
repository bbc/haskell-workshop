module C4SyntaxInFunctions where

-- Pattern Matching

-- finish this fibonaacci function using pattern matching
-- fib 10 should return 89
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n - 1) + fib (n - 2)

-- write a safeTail function that returns the tail of a list if it is not empty
-- otherwise returns an empty list, []
-- use pattern matching 
-- (note that the patterns are not filled in like they are in the fib example, you will need to write the patterns yourself)
safeTail :: [String] -> [String]
safeTail [] = []
safeTail (x:xs) = xs

-- write the reverse function using pattern matching
myReverse :: [a] -> [a]
myReverse [] = []
myReverse (x:xs) = myReverse xs ++ [x]

-- Guards

-- Write a function that takes two Ints and returns 1 if the first one is greater than the second
-- returns 0 if they are equal
-- and returns -1 if the second is greater
-- Use guards - do not use if-statements
-- Something to think about: Why can you not use pattern matching for this?
mySort :: Int -> Int -> Int
mySort a b
    | a < b = (-1)
    | a == b = 0
    | otherwise = 1

