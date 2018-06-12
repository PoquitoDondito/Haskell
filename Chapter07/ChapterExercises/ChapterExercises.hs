module ChapterExercises where

{- Multiple Choice
1. D
2. B
3. D
4. B
5. A -}

{- Let's write code
1. The following function returns the tens digit of an integral argument. -}

tensDigit :: Integral a => a -> a
tensDigit x = d
  where xLast = x `div` 10
        d = xLast `mod` 10

{- a) First, rewrite it using divMod -}

tensDigitDM :: Integral a => a -> a
tensDigitDM x = d
  where d = fst $ x `divMod` 10

{- b) Does the divModversion have the same type as the original version?
        Yes. -}
{- c) Next, let's change it so that we're getting the hundreds digit instead. You
    could start it like this (though that may not be the only possibility):
    hunsD x = d2
      where d = undefined
      ... -}

hunsDigitDM :: Integral a => a -> a
hunsDigitDM x = d
  where d = fst $ x `divMod` 100

{- 2. Implement the function of the type a -> a -> Bool -> a once each using a
  case expression and once with a guard. -}

foldBool :: a -> a -> Bool -> a
foldBool = error "Error: Need to implement foldBool!"

{- The result is semantically similar to if-then-else expressions but
  syntactically quite different. Here is the patern matching version to get you
  started: -}

foldBool3 :: a -> a -> Bool -> a
foldBool3 x y True = x
foldBool3 x y False = y

foldBoolGuard :: a -> a -> Bool -> a
foldBoolGuard x y z
  | z == True  = x
  | z == False = y

foldBoolCase :: a -> a -> Bool -> a
foldBoolCase x y z = case z of
  True -> x
  False -> y

{- 3. Fill in the definition. Note that the first argument to our function is
  also a function whcih can be applied to values. Your second argument is a
  tuple, which can be used for parttern matching: -}

g :: (a -> b) -> (a, c) -> (b, c)
g f (a, c) = (f a, c)
