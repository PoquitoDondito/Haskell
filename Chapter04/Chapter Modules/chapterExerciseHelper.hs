module Vulcan where

--Prerequisite code values for the chapter
awesome = ["Papuchon", "curry", ":)"]
alsoAwesome = ["Quake", "The Simons"]
allAwesome = [awesome, alsoAwesome]

--Palindrome checker
isPalindrome :: (Eq a) => [a] -> Bool
isPalindrome x = x == reverse x

--Absolute value
myAbs :: Integer -> Integer
myAbs x = if x <= 0
          then (-x)
          else x

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f x y = let
         b = snd x
         d = snd y
         a = fst x
         c = fst y
         in ((b, d), (a, c))

x = (+)
g xs = w `x` 1
  where w = length xs
