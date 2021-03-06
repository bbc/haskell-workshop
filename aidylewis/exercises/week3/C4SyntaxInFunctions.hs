module C4SyntaxInFunctions where

-- Pattern Matching

-- finish this fibonaacci function using pattern matching
-- fib 10 should return 89
fib :: Int -> Int
fib 0 = 1
fib 1 = 1
fib n = fib (n-1) + fib (n-2)

-- write a safeTail function that returns the tail of a list if it is not empty
-- otherwise returns an empty list, []
-- use pattern matching
-- (note that the patterns are not filled in like they are in the fib example, you will need to write the patterns yourself)
safeTail :: [String] -> [String]
safeTail (_:xs) = xs
safeTail [] = []

-- Write a function that takes the first two elements in a 3-tuple and adds them together
-- addTuple (1,2,5) returns 3
addTuple :: Num a => (a, a, b) -> a
addTuple (x,y,_) = x + y

-- Write a function like addTuple, but instead puts the number in a new tuple with the third element
-- condenseTuple (1,2,"income") returns (3, "income")
condenseTuple :: Num a => (a, a, String) -> (a, String)
condenseTuple (x,y,z) = ((x + y), z)

-- write the reverse function using pattern matching
myReverse :: [a] -> [a]
myReverse(x:xs) = myReverse xs ++ [x]
myReverse [] = []
-- Guards
-- Aidy:
-- Using recursion, not sure how to do this with guards
-- without a helper function

-- Write a function that takes two Ints and returns 1 if the first one is greater than the second
-- returns 0 if they are equal
-- and returns -1 if the second is greater
-- Use guards - do not use if-statements
-- Something to think about: Why can you not use pattern matching for this?
mySort :: Int -> Int -> Int
mySort a b
    | a == b = 0
    | a > b =  1
    | a < b = -1
