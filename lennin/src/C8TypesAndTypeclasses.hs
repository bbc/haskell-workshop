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
data Address' = 
    Address' {
        houseNumber :: String,
        street :: String,
        postcode :: String
} deriving (Show)

-- Convert Address into the Address'' type with type parameters
-- So instead of Strings we are talking about polymorphic types
data Address'' = Address'' Address
    deriving Show

-- We define a Person to consist of a String, aliased as a Name, and a Maybe Address
type Name = String

data Person = Person Name (Maybe Address)
    deriving Show

-- Write a function that pattern matches on the address, returning True if it is there, otherwise False
hasAddress :: Person -> Bool
hasAddress (Person n a) = 
    case a of 
     Just(_) -> True
     Nothing -> False


-- Define a recursive list data type
data List a = Empty | Cons a (List a)

-- Define push and pop operations for the List datatype
pop :: List a -> Maybe a
pop Empty = Nothing
pop (Cons a l) = Just(a)

push :: List a -> a -> List a
push l a = Cons a l


-- ################
-- Typeclasses
-- ################

data Html a 
    = Div a
    | Paragraph a

-- Write a Show instance for Html
instance (Show a) => Show (Html a) where
     show (Div x) = "<div>" ++ show x ++ "</div>"
     show (Paragraph x) = "<p>" ++ show x ++ "</p>"

-- Write an Eq instance for Html
instance (Eq a) => Eq (Html a) where
     Div x == Div y = x == y
     Paragraph x == Paragraph y = x==y

-- Write a functor instance for Html
instance Functor Html where
    fmap f (Div x) = Div (f x)
    fmap f (Paragraph x) = Paragraph (f x)
