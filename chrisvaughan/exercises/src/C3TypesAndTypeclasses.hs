module C3TypesAndTypeclasses where

-- last, length, and take are all from the standard library, Prelude
-- You can find out the type in ghci with ":t last", but attempt to answer first

-- What is the type of last?
-- last :: [a] -> a

-- What is the type of length?
-- length :: [a] -> Int
-- XXX Foldable t => t a -> Int

-- What is the type of take?
-- take :: Int [a] -> [a]

-- What is the type of myConcat?
-- myConcat :: [a] -> [a] -> [a]
myConcat a b = a ++ b


-- Can you use type classes to constrain the polymorphic types?
-- Make the types polymorphic and use a typeclass constraint
-- 
-- Something to think about:
--     What happens if you don't use a typeclass constraint?

-- What is the type of this function
-- mul :: Num a => a -> a -> a
mul a b = a * b

-- Consider this function
hasShowableInside :: Show a => [a] -> Bool
hasShowableInside xs = null xs

-- Now convert it into a function that checks only whether there are numbers inside
hasNumbersInside :: Num a => [a] -> Bool
hasNumbersInside xs = null xs

-- Write the type signature for this function
-- Hint: You will need to use the relevant typeclasses
showAndRead :: (Read a, Show a) => a -> a
showAndRead a = read (show a)
-- XXX (Read a1, Show a2) => a2 -> a1

