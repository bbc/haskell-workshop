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
data Address' = Address' { name_or_number :: String, street :: String, postcode :: String }

-- Convert Address into the Address'' type with type parameters
-- So instead of Strings we are talking about polymorphic types
data Address''  a b c = Address''

-- We define a Person to consist of a String, aliased as a Name, and a Maybe Address
type Name = String

data Person = Person Name (Maybe Address)
    deriving Show

-- Write a function that pattern matches on the address, returning True if it is there, otherwise False
hasAddress :: Person -> Bool
hasAddress (Person _ (Just _)) = True
hasAddress (Person _ _) = False

-- Define a recursive list data type
data List a = List a (List a) | EmptyList

-- Define push and pop operations for the List datatype
pop :: List a -> a
pop EmptyList = error "Empty list"
pop (List x _) = x

push :: List a -> a -> List a
push EmptyList x = List x EmptyList
push xs x = List x xs


-- ################
-- Typeclasses
-- ################

data Html a 
    = Div a
    | Paragraph a

-- Write a Show instance for Html
instance (Show a) => Show (Html a) where
    show (Div a) = "<div>" ++ show a ++ "</div>"
    show (Paragraph a) = "<p>" ++ show a ++ "</p>"

-- Write an Eq instance for Html
instance (Eq a) => Eq (Html a) where
    Div x == Div y = x == y
    Paragraph x == Paragraph y = x == y
    _ == _ = False

-- Write a functor instance for Html
instance Functor Html where
    fmap f (Div a) = Div $ f a
    fmap f (Paragraph a) = Paragraph $ f a
