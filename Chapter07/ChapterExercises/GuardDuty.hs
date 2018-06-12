module GuardDuty where

{- 1.
It is probably clear to you why you wouldn't put an otherwise in your top-most
guard, but try it with the avgGrade anyway and see what happens. It'll be more
clear if you rewrite it as an actual otherwise match: 'F'. what happens now if
you pass a 90 as an argument? 75? 60?
-- They all fail because the otherwise statement is always true, so it uses
the value 'F' first.
-}
avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | otherwise = 'F'
  | y >= 0.9  = 'A'
  | y >= 0.8  = 'B'
  | y >= 0.7  = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59  = 'F'
  where y = x / 100

{- 2.
What happens if you take avgGrade as it is written and reorder the guards? Does
it still typecheck and work the same? Try moving | y >= 0.7 = 'C' and passing it
the argument 90, whcih should be an 'A'. Does it return an 'A'?
-- No, because as with the otherwise guard above, the first argument satisfied
  is that the grade is equal to or greater than 0.7, and therefore will be a 'C'.
-}

{- 3.
The following function returns
pal xs
  | xs == reverse xs = True
  | otherwise        = False
-- b)
-}

{- 4.
What types of arguments can pal take
-- Anything within the typeclass Eq and which is a list.
-}

{- 5.
What is the type of the function pal?
-- pal :: Eq a => [a] -> Bool
-}

{- 6.
The following function returns
numbers x
  | x < 0  = -1
  | x == 0 = 0
  | x > 0  = 1
-- B)
-}

{- 7.
What types of arguments can numbers take?
-- Anything in the Eq typeclass and Num typeclass (although it does accept Word, it
will not function correctly because those are unsigned integers which will mess
up the first guard).
-}

{- 8.
numbers :: (Num p, Num a, Eq a) => a -> p
-}
