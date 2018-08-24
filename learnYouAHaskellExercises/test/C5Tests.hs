module C5Tests where

import Test.Hspec

import qualified C5Recursion as C5

testC5 = hspec $ do
    describe "C5" $ do
        it "myMin is implememted correctly" $ do
            C5.myMin [4,5,6] `shouldBe` 4
            C5.myMin [10] `shouldBe` 10
            C5.myMin [100, 23, 11] `shouldBe` 11
        it "longList is implemented correctly" $ do
            take 9 (C5.longList [1,2,3]) `shouldBe` [1,2,3,1,2,3,1,2,3]
        it "myMap is implememted correctly" $ do
            C5.myMap (+3) [1,1,2] `shouldBe` [4,4,5]
            C5.myMap (*10) [] `shouldBe` []
            C5.myMap (++ " rocks") ["haskell"] `shouldBe` ["haskell rocks"]
        it "tuple2List is implememted correctly" $ do
            C5.tuple2List [(1,2),(1,2)] `shouldBe` [1,1]
            C5.tuple2List ([] :: [(Int, Int)]) `shouldBe` []
            C5.tuple2List [("a", 1), ("b", 2)] `shouldBe` ["a", "b"]
