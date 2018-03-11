module Test08 where

{-I'm going to do a metric crap ton of writing instances here because that is
something I had the most trouble with and I should probably work on that.-}

data Color = Red | Green

instance Eq Color where
  Red == Red = True
  Green == Green = True
  _ == _ = False

instance Enum Color where
  toEnum 1 = Red
  fromEnum Red = 1
  toEnum 2 = Green
  fromEnum Green = 2

data Trivial = Trivial

instance Eq Trivial where
  Trivial == Trivial = True
