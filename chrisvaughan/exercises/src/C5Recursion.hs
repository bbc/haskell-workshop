module C5Recursion where

-- Implement all of these functions using explicit recursion

-- Write a minimum function that takes a list and returns its smallest element
-- myMin [10, 5, 15] returns 5
myMin :: Ord a => [a] -> a
myMin [] = error "Empty list."
myMin [x] = x
myMin (x:xs)
    | x < minXs = x
    | otherwise = minXs
    where minXs = myMin xs

-- Write a function that takes a finite list and turns it into an infinite list which repeats itself
-- Hint: this won't need any base/edge case
-- longList [1,2,3,4,5] returns [1,2,3,4,5,...]
longList :: [a] -> [a]
longList xs = xs ++ longList xs

-- Write a function that takes a list of tuples and extracts the first element in each tuple into a new list
-- tuple2List [("a", 1), ("b", 2)] returns ["a", "b"]
tuple2List :: [(a, b)] -> [a]
tuple2List [] = []
tuple2List ((a,b):xs) = a : tuple2List xs

-- Write the map function, 
--  i.e. JavaScript's array.map(fn)
-- using recursion
-- myMap (+2) [1,2,3] returns [3,4,5]
myMap :: (a -> b) -> [a] -> [b]
myMap _ [] = []
myMap f (x:xs) = f x : myMap f xs

-- Write the filter function, 
--  i.e. JavaScript's array.filter(fn)
-- using recursion
-- myFilter (>2) [1,2,3,4] returns [3, 4]
myFilter :: (a -> Bool) -> [a] -> [a]
myFilter _ [] = []
myFilter f (x:xs)
    | f x = x : filteredXs
    | otherwise = filteredXs
    where filteredXs = myFilter f xs

-- Write the reduce function, 
--  i.e. JavaScript's array.reduce(fn)
-- using recursion
-- myReduce (+) 0 [1..100] returns 5050
myReduce :: (a -> b -> b) -> b -> [a] -> b
myReduce _ cur [] = cur
myReduce acc cur (x:xs) =
    let tail = myReduce acc cur xs
    in acc x tail

-- Write the map function again, but this time implement it with myReduce
-- myMapWithReduce (+2) [1,2,3] returns [3,4,5]
myMapWithReduce :: (a -> b) -> [a] -> [b]
myMapWithReduce _ [] = []
myMapWithReduce f xs =
    let acc a bs = f a : bs
    in myReduce acc [] xs
