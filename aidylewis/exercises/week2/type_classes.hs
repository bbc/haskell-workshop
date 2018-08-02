-- What is the type of last?
last :: [a] -> a
-- Takes a list with a polymorphic type
-- and returns the same polymorphic type

-- What is the type of length?
length :: Foldable t => t a -> Int
-- Cheated. The fat arrow is a class constraint
-- A tuple is not foldable, as they can contain heterogeneous elements
-- But counts a pair
-- ghci> length (1, 2)
-- 1
-- But not a triple of the same type
-- ghci> length (1, 2, 3)

-- <interactive>:40:1: error:
--     • No instance for (Foldable ((,,) Integer Integer))
--         arising from a use of ‘length’
--     • In the expression: length (1, 2, 3)
--       In an equation for ‘it’: it = length (1, 2, 3)

-- What is the type of take?
take :: Int -> [a] -> [a]
-- Takes a list of Ints and returns a list of Ints

-- myConcat :: ??
-- myConcat a b = a ++ b
myConcat :: [a] -> [a] -> [a]
-- concats two polymorphic types and also must return the same type

-- Can you use type classes to constrain the polymorphic types?
-- Make the types polymorphic and use a typeclass constraint
--     What happens if you don't use a typeclass constraint?

-- What is the type of this function
-- mul a b = a * b
mul :: Num a => a -> a -> a

-- Consider this function
hasShowableInside :: Show a => [a] -> Bool
hasShowableInside xs = null xs

-- Now convert it into a function that checks only whether there are numbers inside
-- hasNumbersInside :: ??
hasNumbersInside :: Num a => [a] -> Bool
hasNumbersInside xs = not ( null xs )

hasNumbersInside [1, 2, 3]
True
-- throws an exception if not a number, when I'd expect "False".

-- Write the type signature for this function
-- Hint: You will need to use the relevant typeclasses
--- showAndRead :: ??
showAndRead a = read (show a)
