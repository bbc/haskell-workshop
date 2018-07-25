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
getThirdElement ls = head (tail (tail ls))
-- Questions
-- Can't we pipe as in Unix?  
