module Athena where

--Squaring function
square :: Num a => a -> a
square x = x * x

--Function which caluclates the area of a circle
areaOfCircle :: Floating a => a -> a
areaOfCircle r = square r * pi
