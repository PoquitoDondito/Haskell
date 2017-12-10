module Athena where

import Data.Complex

--Squaring function
square :: Num a => a -> a
square x = x * x

--Function which caluclates the area of a circle
areaOfCircle :: Floating a => a -> a
areaOfCircle r = square r * pi

--Discriminant Test
discriminantTest :: (Num t1, Ord t1, Enum t1) => t1 -> t1 -> t1 -> String
discriminantTest a b c =
  let x = (b^2 - 4*a*c) in
  if x `elem` enumFromTo 1 x
    then "Solutions: Two | Type of Solutions: Rational"
    else
      case compare x 0 of
        LT -> "Solutions: Two | Type of Solutions: Nonreal complex"
        GT -> "Solutions: Two | Type of Solutions: Irrational"
        EQ -> "Solutions: One | Type of Solution: Rational"

{-
Tests come from my Precalculus book Exercises 1.4: 83,85,87,89,91
First one tested is: x^2-8x+16=0
Second one tested is: 3x^2+5x+2=0
Third one tested is: 4x^2=-6x+3 -> 4x^2+6x-3
Fourth one tested is: 9x^2+11x+4=0
Fifth one tested is: 8x^2-72=0 -> 8x^2+0x-72=0
-}
