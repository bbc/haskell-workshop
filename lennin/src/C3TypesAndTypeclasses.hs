module C3TypesAndTypeclasses where

-- last, length, and take are all from the standard library, Prelude
-- You can find out the type in ghci with ":t last", but attempt to answer first

-- What is the type of the last function?
-- last :: [a] -> a

-- What is the type of the length function?
-- length :: [a] -> Int
-- length :: Foldable t => t a -> Int    
-- rationale is that the latter applies aside from Lists also to Sets and StorableVectors 

-- What is the type of the take function?
-- take :: Int->[a] -> [a]

-- myConcat :: [a] -> [a] -> [a]
myConcat a b = a ++ b


-- Can you use type classes to constrain the polymorphic types?
-- Make the types polymorphic and use a typeclass constraint
-- What happens if you don't use a typeclass constraint?

-- What is the type of this function
-- mul :: Num a => a -> a -> a
mul a b = a * b

-- Consider this function
hasShowableInside :: Show a => [a] -> Bool
hasShowableInside xs = null xs

-- Now convert it into a function that checks only whether there are numbers inside
hasNumbersInside :: Num a => [a] -> Bool
hasNumbersInside xs = not ( null xs )

-- Write the type signature for this function
-- Hint: You will need to use the relevant typeclasses
showAndRead :: (Show a, Read a) => a -> a
showAndRead a = read (show a)
