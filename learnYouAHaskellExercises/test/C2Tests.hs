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

