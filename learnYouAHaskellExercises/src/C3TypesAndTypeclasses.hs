module C3TypesAndTypeclasses where

-- last, length, and take are all from the standard library, Prelude
-- You can find out the type in ghci with ":t last", but attempt to answer first

-- What is the type of the last function?
-- last :: ??

-- What is the type of the length function?
-- length :: ??

-- What is the type of the take function?
-- take :: ??

-- myConcat :: ??
myConcat a b = a ++ b


-- Can you use type classes to constrain the polymorphic types?
-- Make the types polymorphic and use a typeclass constraint
-- What happens if you don't use a typeclass constraint?

-- What is the type of this function
-- mul :: ??
mul a b = a * b

-- Consider this function
hasShowableInside :: Show a => [a] -> Bool
hasShowableInside xs = null xs

-- Now convert it into a function that checks only whether there are numbers inside
-- hasNumbersInside :: ??
hasNumbersInside xs = null xs

