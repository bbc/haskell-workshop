module C5Recursion where

-- Implement all of these functions using explicit recursion

-- Write a minimum function that takes a list and returns its smallest element
-- myMin [10, 5, 15] returns 5
myMin :: Ord a => [a] -> a
myMin [] = error "minimum of empty list"
myMin [x] = x
myMin (x:xs)
    | x < minTail = x
    | otherwise = minTail
    where minTail = myMin xs

myMin' :: Ord a => [a] -> a
myMin' [] = error "minimum of empty list"
myMin' [x] = x
myMin' (x:xs) = min x (myMin' xs)

-- Write a function that takes a finite list and turns it into an infinite list which repeats itself
-- Hint: this won't need any base/edge case
-- longList [1,2,3,4,5] returns [1,2,3,4,5,...]
longList :: [a] -> [a]
longList xs = xs ++ longList xs

-- Write a function that takes a list of tuples and extracts the first element in each tuple into a new list
-- tuple2List [("a", 1), ("b", 2)] returns ["a", "b"]
tuple2List :: [(a, b)] -> [a]
tuple2List [] = []
tuple2List ((a,b):xs) = a:tuple2List xs

-- Write the map function,
--  i.e. JavaScript's array.map(fn)
-- using recursion
-- myMap (+2) [1,2,3] returns [3,4,5]
myMap :: (a -> b) -> [a] -> [b]
myMap = undefined

-- Write the filter function,
--  i.e. JavaScript's array.filter(fn)
-- using recursion
-- myFilter (>2) [1,2,3,4] returns [3, 4]
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter = undefined

-- Write the reduce function,
--  i.e. JavaScript's array.reduce(fn)
-- using recursion
-- myReduce (+) 0 [1..100] returns 5050
myReduce :: (a -> b -> b) -> b -> [a] -> b
myReduce = undefined

-- Write the map function again, but this time implement it with myReduce
-- myMapWithReduce (+2) [1,2,3] returns [3,4,5]
myMapWithReduce :: (a -> b) -> [a] -> [b]
myMapWithReduce = undefined

