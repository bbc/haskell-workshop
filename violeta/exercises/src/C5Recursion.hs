module C5Recursion where

-- Write a minimum function that takes a list and returns its smallest element
-- myMin [10, 5, 15] returns 5
myMin :: Ord a => [a] -> a
myMin [x] = x
myMin (x:xs)
    | x < myMin xs = x
    | otherwise = myMin xs

-- Write a function that takes a finite list and turns it into an infinite list which repeats itself
-- Hint: this won't need any base/edge case
-- longList [1,2,3,4,5] returns [1,2,3,4,5,...]
longList :: [a] -> [a]
longList xs = xs ++ longList xs

-- Write the map function, 
--  i.e. JavaScript's array.map(function)
-- using recursion
-- myMap (+2) [1,2,3] returns [3,4,5]
myMap :: (a -> b) -> [a] -> [b]
myMap op [] = []
myMap op (x:xs) = (op x) : myMap op xs

-- Write a function that takes a list of tuples and extracts the first element in each tuple into a new list
-- tuple2List [("a", 1), ("b", 2)] returns ["a", "b"]
tuple2List :: [(a, b)] -> [a]
tuple2List [] = []
tuple2List (x:xs) = (fst x) : tuple2List xs
