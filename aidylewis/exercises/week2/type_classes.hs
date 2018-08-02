-- What is the type of last?
last :: [a] -> a
-- the return type is the same type as the input

-- What is the type of length?
length :: Foldable t => t a -> Int
-- Cheated. The fat arrow is a class constraint

-- What is the type of take?
take :: Int -> [a] -> [a]
-- Does this mean the take takes an Int but returns a value of the same type?

-- myConcat :: ??
-- myConcat a b = a ++ b
myConcat :: [a] -> [a] -> [a]
-- concats two types and also must return the same type

-- Can you use type classes to constrain the polymorphic types?
-- Make the types polymorphic and use a typeclass constraint
--
-- Something to think about:
--     What happens if you don't use a typeclass constraint?

-- What is the type of this function
-- mul a b = a * b
mul :: Num a => a -> a -> a
-- Is Number a higher type than Int, Float, Double, Integral etc?
