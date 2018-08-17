module C2StartingOut where

-- To load in ghci: :load C2StartingOut.hs
-- Then you will be able to run all of these functions

-- Write a function to subtract two numbers
-- Example: sub 100 72 returns 28
sub x y = x - y

-- Write a function that calculates the area of a circle
-- Hint: Use pi from Prelude
-- Example: area 10 returns 314.1592653589793 
area r = pi * r * r

-- Take two arguments and concatenate them together
-- Example: myConcat "hello" " Haskell" returns "hello Haskell"
myConcat a b = a ++ b

-- Get the third element from a list using only head and tail
-- Example: myThirdFirst [1,2,3,4,5] returns 3
-- getThirdElement xs = head(tail(tail(xs)))
getThirdElement = head . tail . tail

-- Get the third to last element from a list using only last and init
-- Example myThirdLast [6,7,8,9,10] returns 8
-- getThirdElementLast xs = last(init(init(xs)))
getThirdElementLast = last . init . init

-- Take the last three items from a list and sums them
-- Example: lastThreeSummed [10,20,30,40,50] returns 120
lastThreeSummed = sum . take 3 . reverse

-- Get the first n characters from the english alphabet in a list
-- Example: getLetters 8 returns ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
getLetters n = take n (cycle ['a'..'z'])

-- Generate a palindrome from any input string (doesn't have to be meaningful)
-- Example: palindrome "cats and dogs" returns "cats and dogssgod dna stac"
palindrome xs = xs ++ reverse xs

-- Cut the elements of a list between two points
-- Hint: this function will take 3 arguments (two indices and a list)
-- Example: cut 10 20 [1..100] returns [11,12,13,14,15,16,17,18,19,20]
cut x y xs = take (1 + y - x) (drop x xs)

-- Write a list comprehension that computes Fizz Buzz
-- Fizz is any number  that is divisible by 3 and Buzz is any number that is divisible by 5
-- Example: fizzBuzz returns ["Fizz","1","2","Fizz","4","Buzz"... etc
x `isDivisibleBy` y = (x `mod` y) == 0

fizzBuzz = [
    if x `isDivisibleBy` 3 then "Fizz"
    else if x `isDivisibleBy` 5 then "Buzz"
    else show x | x <- [0..100]]

