module C8TypesAndTypeclasses where

-- ################
-- Types
-- ################

-- data Bool     =     True | False
--       ^               ^      ^
-- type constructor   data constructors

-- Convert Address into the Address' type using record syntax
data Address = Address String String String
    deriving Show
-- corresponding to
--     house name/number
--     street
--     postcode
-- data Address' = ??

-- Convert Address into the Address'' type with type parameters
-- So instead of Strings we are talking about polymorphic types
-- data Address'' = ??

-- We define a Person to consist of a String, aliased as a Name, and a Maybe Address
type Name = String

data Person = Person Name (Maybe Address)
    deriving Show

-- Write a function that pattern matches on the address, returning True if it is there, otherwise False
hasAddress :: Person -> Bool
hasAddress = undefined

-- Define a recursive list data type
-- data List a = ??

-- Define push and pop operations for the List datatype
-- pop :: List a -> a
pop = undefined

-- push :: List a -> a -> List a
push = undefined


-- ################
-- Typeclasses
-- ################

data Html a 
    = Div a
    | Paragraph a

-- Write a Show instance for Html
-- instance Show ?? where
--     show (Div a) = ??
--     show ??

-- Write an Eq instance for Html
-- instance Eq ?? where
--      Div x == Div y = ??
--      Paragraph a ??

-- Write a functor instance for Html
-- instance Functor ?? where
--     fmap f (Div a) = ??
--     fmap ??
