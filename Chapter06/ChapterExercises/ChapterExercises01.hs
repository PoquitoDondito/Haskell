module Temp where

data DayOfWeek =
  Mon | Tue | Weds | Thu | Fri | Sat | Sun
  deriving (Show, Eq)

instance Ord DayOfWeek where
  compare Fri Fri = EQ
  compare Fri _   = GT
  compare _ Fri   = LT
  compare _ _     = EQ


--1.
max (length [1, 2, 3]) (length [8, 9, 10, 11, 12])
max (3) (5)
5

--2.
compare (3 * 4) (3 * 5)
compare (12) (15)
LT

--4.
(5 + 3) > (3 + 6)
(8) > (9)
False

enumFrom 5


enumFromThenTo 0 10 100
[0, 0+i]

i = 10 - 0

enumFromThen 0 1000000
