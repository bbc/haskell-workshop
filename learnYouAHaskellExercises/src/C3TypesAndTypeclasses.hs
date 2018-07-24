module C3TypesAndTypeclasses where

-- Functions from the previous chapter
-- last, length, and take are all from the standard library, Prelude
-- You can find out the type in ghci with ":t last", but attempt to answer first

-- What is the type of the last function?
-- last :: ??

-- What is the type of the length function?
-- length :: ??

-- What is the type of the take function?
-- take :: ??


-- What is the type of the following functions
-- can you use type classes to constrain the polymorphic types?

-- myConcat :: ??
myConcat a b = a ++ b

-- TODO: This might confuse people since lists already are an instance of Show
-- Hint: This is a weird one because you aren't returning a list but a String because show :: a -> String
-- Can you use Show?
--myConcatAndShow :: ??
myConcatAndShow a b = show (a ++ b)


