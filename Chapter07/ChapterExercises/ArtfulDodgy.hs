module ArtfulDodgy where

{-
Given the following definitions tell us what value results from further
applications. When you've written down at least some of the answers and think
you know what's what, type the definitions into a file and load them in
GHCi to test your answers.
-}
-- Types not provided, try filling them in yourself
dodgy :: Num a => a -> a -> a
dodgy x y = x + y * 10
oneIsOne :: Num a => a -> a
oneIsOne y = dodgy 1 y
oneIsTwo :: Num a => a -> a
oneIsTwo y = (flip dodgy) 2 y

{-
1. 1
2. 11
3. 22
4. 21
5. 12
6. 11
7. 21
8. 21
9. 22
10. 31
11. 23
-}
