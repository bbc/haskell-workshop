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
        it "tuple2List is implememted correctly" $ do
            C5.tuple2List [(1,2),(1,2)] `shouldBe` [1,1]
            C5.tuple2List ([] :: [(Int, Int)]) `shouldBe` []
            C5.tuple2List [("a", 1), ("b", 2)] `shouldBe` ["a", "b"]
        it "myMap is implememted correctly" $ do
            C5.myMap (+3) [1,1,2] `shouldBe` [4,4,5]
            C5.myMap (*10) [] `shouldBe` []
            C5.myMap (++ " rocks") ["haskell"] `shouldBe` ["haskell rocks"]
        it "myFilter is implememted correctly" $ do
            C5.myFilter (>3) [1,2,3,4,5] `shouldBe` [4,5]
            C5.myFilter (>10) [] `shouldBe` []
            C5.myFilter (== "haskell") ["haskell", "javascript"] `shouldBe` ["haskell"]
        it "myReduce is implememted correctly" $ do
            C5.myReduce (+) 0 [1,2,3] `shouldBe` 6
            C5.myReduce (:) [] ["hello", "world"] `shouldBe` ["hello", "world"]
        it "myMap is implememted correctly" $ do
            C5.myMapWithReduce (+3) [1,1,2] `shouldBe` [4,4,5]
            C5.myMapWithReduce (*10) [] `shouldBe` []
            C5.myMapWithReduce (++ " rocks") ["haskell"] `shouldBe` ["haskell rocks"]
