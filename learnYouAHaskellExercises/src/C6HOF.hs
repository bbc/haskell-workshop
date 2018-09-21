module C6HOF where

-- Define a function that takes a function and two other arguments
-- and applies the function to the other arguments
unevaledF :: (a -> b -> c) -> a -> b -> c
unevaledF = undefined

-- Apply the first argument to unevaledF 
-- (doesn't matter what it is, we're only interested in the partial application)
-- Fill in the type signatures
-- partial1 :: ??
partial1 = undefined

-- Apply the next argument to partial1 
-- partial2 :: ??
partial2 = undefined

-- Apply the final argument to partial2
-- full :: ??
full = undefined

-- Generalise the applyTwice function to apply any arbitrary number of times
-- apply (+1) 0 10 should return 10
apply :: (a -> a) -> a -> Int -> a
apply = undefined

-- The type of the composition operator (.) is
-- (.) :: (b -> c) -> (a -> b) -> (a -> c)
--
-- This is a function that takes a function from B to C,
-- and one from A to B, and returns a function from A to C
--
-- f . g             applies g first, and then applies f
--
--
-- Use flip to create an andThen function where
--
-- f `andThen` g     applies f first, and then applies g
--
-- (*3) . (*10) $ 10 will return 103
-- (+3) `andThen` (*10) $ 10 should return 130
-- andThen :: ??
andThen = undefined

-- Now use andThen to replace the (.) operator in
-- map (negate . sum . tail) [[1..5],[3..6],[1..7]]
replaceDotWithAndThen :: [Int]
replaceDotWithAndThen = undefined

-- If you want to use something more concise than `andThen`
(>>>) = andThen
