module Test02 where
import Data.List

--1
i :: Num a => a
i = 1

{-
i :: a
-}

--2
f :: Float
f = 1.0

{-
f :: Num a => a
-}

--3
f' :: Float
f' = 1.0

{-
f' :: Fractional a => a
-}

--4
f'' :: Float
f'' = 1.0

{-
f'' :: RealFrac a => a
-}

--5
freud :: a -> a
freud x = x

{-
freud :: Ord a => a -> a
Works
-}

--6
freud' :: a -> a
freud' x = x

{-
freud' :: Int -> Int
Works
-}

--7
myX = 1 :: Int

sigmund :: Int -> Int
sigmund x = myX

{-
sigmund :: a -> a
-}

--8
--Repeated myX
sigmund' :: Int -> Int
sigmund' x = myX

{-
sigmund' :: Num a => a -> a
-}

--9
jung :: Ord a => [a] -> a
jung xs = head (sort xs)

{-
jung :: [Int] -> Int
-}

--10
young :: [Char] -> Char
young xs = head (sort xs)

{-
young :: Ord a => [a] -> a
-}

--11
mySort :: [Char] -> [Char]
mySort = sort

signifier :: [Char] -> Char
signifier xs = head (mySort xs)

{-
signifier :: Ord a => [a] -> a
-}
