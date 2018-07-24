module C2Tests where

import Test.Hspec

import qualified C2StartingOut as C2

testC2 = hspec $ do
    describe "C2" $ do
        it "sub is implemented correctly" $ do
            C2.sub 100 72 `shouldBe` 28
            C2.sub 10 0 `shouldBe` 10
            C2.sub 3 2 `shouldBe` 1
        it "area is implemented correctly" $ do
            C2.area 10 `shouldBe` 314.1592653589793
        it "myConcat is implemented correctly" $ do
            C2.myConcat "hello" " Haskell" `shouldBe` "hello Haskell"
            C2.myConcat [1,2,3] [4,5,6] `shouldBe` [1,2,3,4,5,6]
            C2.myConcat [1] (C2.myConcat [2] [3]) `shouldBe` [1,2,3]
        it "getThirdElement is implemented correctly" $ do
            C2.getThirdElement [1,2,3,4,5] `shouldBe` 3
            C2.getThirdElement [1,2,3,4,5,6] `shouldBe` 3
        it "getThirdElementLast is implemented correctly" $ do
            C2.getThirdElementLast [6,7,8,9,10] `shouldBe` 8
            C2.getThirdElementLast [6,7,8,9,10,11] `shouldBe` 9
        it "lastThreeSummed is implemented correctly" $ do
            C2.lastThreeSummed [10,20,30,40,50] `shouldBe` 120
            C2.lastThreeSummed [1,2,3,4] `shouldBe` 9
        it "getLetters is implemented correctly" $ do
            C2.getLetters 3 `shouldBe` ['a','b','c']
            C2.getLetters 5 `shouldBe` ['a','b','c','d','e']
        it "palindrome is implemented correctly" $ do
            C2.palindrome "hello" `shouldBe` "helloolleh"
            C2.palindrome "wat" `shouldBe` "wattaw"
        it "cut is implemented correctly" $ do
            C2.cut 1 4 [0,1,2,3,4,5] `shouldBe` [1,2,3,4]
            C2.cut 4 5 [0,1,2,3,4,5] `shouldBe` [4,5]
        it "fizzBuzz is implemented correctly" $ do
            C2.fizzBuzz `shouldBe`["Fizz","1","2","Fizz","4","Buzz","Fizz","7","8","Fizz","Buzz","11","Fizz","13","14","Fizz","16","17","Fizz","19","Buzz","Fizz","22","23","Fizz","Buzz","26","Fizz","28","29","Fizz","31","32","Fizz","34","Buzz","Fizz","37","38","Fizz","Buzz","41","Fizz","43","44","Fizz","46","47","Fizz","49","Buzz","Fizz","52","53","Fizz","Buzz","56","Fizz","58","59","Fizz","61","62","Fizz","64","Buzz","Fizz","67","68","Fizz","Buzz","71","Fizz","73","74","Fizz","76","77","Fizz","79","Buzz","Fizz","82","83","Fizz","Buzz","86","Fizz","88","89","Fizz","91","92","Fizz","94","Buzz","Fizz","97","98","Fizz","Buzz"]