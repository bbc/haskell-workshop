module C2StartingOut where

-- To load in ghci: :load C2StartingOut.hs
-- Then you will be able to run all of these functions

-- Write a function to subtract two numbers
-- Example: sub 100 72 returns 28
sub x y = x-y
-- sub 100 72
-- 28


-- Write a function that calculates the area of a circle
-- Hint: Use pi from Prelude
-- Example: area 10 returns 314.1592653589793 
area radio  =  pi * radio* radio
--area 10
--314.1592653589793


-- Take two arguments and concatenate them together
-- Example: myConcat "hello" " Haskell" returns "hello Haskell"
myConcat a b = a ++ b
--myConcat "hello" "Haskell"
--"helloHaskell"


-- Get the third element from a list using only head and tail
-- Example: myThirdFirst [1,2,3,4,5] returns 3
getThirdElement a = a!!2
--getThirdElement [1,2,3,4,5]
--3

-- Get the third to last element from a list using only last and init
-- Example myThirdLast [6,7,8,9,10] returns 8

myThirdLast a = (reverse a)!!2
--myThirdLast [6,7,8,9,10]
--8


-- Take the last three items from a list and sums them
-- Example: lastThreeSummed [10,20,30,40,50] returns 120
lastThreeSummed a = sum (take 3 (reverse a)) 
-- lastThreeSummed [10,20,30,40,50]
--120


-- Get the first n characters from the english alphabet in a list
-- Example: getLetters 8 returns ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
getLetters n = take n [ 'a' .. 'z' ]
 --getLetters 8
--"abcdefgh"


-- Generate a palindrome from any input string (doesn't have to be meaningful)
-- Example: palindrome "cats and dogs" returns "cats and dogssgod dna stac"
palindrome = error "TODO palindrome"

palindrom s = s ++ (reverse s)
 --palindrom "cats and dogs"
--"cats and dogssgod dna stac"

-- Cut the elements of a list between two points
-- Hint: this function will take 3 arguments (two indices and a list)
-- Example: cut 10 20 [1..100] returns [11,12,13,14,15,16,17,18,19,20]
cut i0 i1 xs = take (i1-i0) (drop i0 xs)
--cut 10 20 [1..100]
--[11,12,13,14,15,16,17,18,19,20]

-- Write a list comprehension that computes Fizz Buzz
-- Fizz is any number  that is divisible by 3 and Buzz is any number that is divisible by 5
-- Example: fizzBuzz returns ["Fizz","1","2","Fizz","4","Buzz"... etc

fizzBuzz =  map (\x-> case () of
                    _   | x `mod` 3 == 0 -> "fizz"
                        | x `mod` 5 ==0 -> "buzz" 
                        | otherwise -> show x) [0..100]

--fizzBuzz
--["fizz","1","2","fizz","4","buzz","fizz","7","8","fizz","buzz","11","fizz","13","14","fizz","16","17","fizz","19","buzz","fizz","22","23","fizz","buzz","26","fizz","28","29","fizz","31","32","fizz","34","buzz","fizz","37","38","fizz","buzz","41","fizz","43","44","fizz","46","47","fizz","49","buzz","fizz","52","53","fizz","buzz","56","fizz","58","59","fizz","61","62","fizz","64","buzz","fizz","67","68","fizz","buzz","71","fizz","73","74","fizz","76","77","fizz","79","buzz","fizz","82","83","fizz","buzz","86","fizz","88","89","fizz","91","92","fizz","94","buzz","fizz","97","98","fizz","buzz"]

