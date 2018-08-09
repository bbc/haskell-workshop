module C4Tests where

import Test.Hspec

import qualified C4SyntaxInFunctions as C4

testC4 = hspec $ do
    describe "C4" $ do
        it "fib is implemented correctly" $ do
            C4.fib 10 `shouldBe` 89
        it "safeHead is implemented correctly" $ do
            C4.safeTail [] `shouldBe` []
            C4.safeTail ["a", "b", "c"] `shouldBe` ["b", "c"]
        it "myReverse is implemented correctly" $ do
            C4.myReverse ["Manchester", "Leeds", "Bradford"] `shouldBe` ["Bradford", "Leeds", "Manchester"]
            C4.myReverse [1, 2, 3, 4, 5] `shouldBe` [5, 4, 3, 2, 1]
        it "mySort is implemented correctly" $ do
            C4.mySort 1 2 `shouldBe` (-1)
            C4.mySort 2 1 `shouldBe` 1
            C4.mySort 1 1 `shouldBe` 0
        it "addTuple is implemented correctly" $ do
            C4.addTuple (1, 2, 6) `shouldBe` 3
            C4.addTuple (0, 6, 10) `shouldBe` 6
        it "condenseTuple is implemented correctly" $ do
            C4.condenseTuple (1, 2, "income") `shouldBe` (3, "income")
            C4.condenseTuple (0, 6, "population") `shouldBe` (6, "population")

