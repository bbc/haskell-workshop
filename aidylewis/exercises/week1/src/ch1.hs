-- Write a function to subtract two numbers
sub x y = x - y
-- Questions
-- We must need to scope both variables. But we only want to return one number with `sub`.
-- Could we not infix sub?


-- calculate area of a circle from its radius
area r = pi * r^2


-- Take two arguments and concatenate them together
-- Example: myConcat "hello" " Haskell" returns "hello Haskell"
myConcat x y = x ++ y
-- Questions
-- Will the '++' cancat all types?


-- Get the third element from a list using only head and tail
-- Example: myThirdFirst [1,2,3,4,5] returns 3
getThirdElement ls = head(tail(tail ls))
-- Questions
-- Can't we pipe as in Unix?


-- Get the third to last element from a list using only last and init
-- Example myThirdLast [6,7,8,9,10] returns 8
getThirdElementLast ls = last(init(init(ls)))


-- Take the last three items from a list and sums them
-- Example: lastThreeSummed [10,20,30,40,50] returns 120
lastThreeSummed ls = sum(take 3(reverse(ls)))


-- Get the first n characters from the english alphabet in a list
-- Example: getLetters 8 returns ['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h']
getLetters x = take x ['a'..'z']


-- Generate a palindrome from any input string (doesn't have to be meaningful)
-- Example: palindrome "cats and dogs" returns "cats and dogssgod dna stac"
palindrome x = x ++ reverse(x)


-- Cut the elements of a list between two points
-- Hint: this function will take 3 arguments (two indices and a list)
-- Example: cut 10 20 [1..100] returns [11,12,13,14,15,16,17,18,19,20]
cut low high ls = take(high-low + 1) (drop low ls)

-- Write a list comprehension that computes Fizz Buzz
-- Fizz is any number  that is divisible by 3 and Buzz is any number that is divisible by 5
-- Example: fizzBuzz returns ["Fizz","1","2","Fizz","4","Buzz"... etc
