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

{- 4. For this next exercise, you'll experiment with writing pointfree versions
  of existing cose. This involves some new information, so read the following
  explanation carefully.
      Typeclasses are dispatched by type. Read is a typeclass like Show, but it
  is the dual or "opposite" of Show. In general, the Read typeclass isn't
  something you should plan to use a lot, but this exercise is structured to
  teach you something abou the interaction between typeclasses and types.
  The function read in the Read typeclass has the type:
read :: Read a => String -> a
      Notice a pattern?
read :: Read a => String -> a
show :: Show a => a -> String
      Write the following code into a source file. Then load it and run it in
  GHCi to make sure you understand why the evaluation results in the answers you
  see. -}

-- id :: a -> a
-- id x = x

roundTrip :: (Show a, Read a) => a -> a
roundTrip a = read (show a)

main = do
  print (roundTrip 4)
  print (id 4)

{- 5. Next, write a pointfree version of roundTrip (n.b., this refers to the
  function definition, not to its application in main) -}

roundTripPF :: (Show a, Read a) => a -> a
roundTripPF = read . show

{- 6. We will continue to use the code in module Arith4 for this exercise as
  well.
      When we apply show to a value such as (1 :: Int), the a that implements
  Show is Int, so GHC will use the Int instance of the Show typeclass to
  stringify our Int of 1.
      However, read expects a string argument in order to return an a. The
  string argument that is the first argument to read tells the function nothing
  about what type the de-stringified result should be. In the type signature
  roundTrip currently has, it knows because the type variables are the same, so
  the type that is the input to show has to be the same type as the outpust of
  read.
      Your task now is to change the type of roundTrip in Arith4 to
  (Show a, Read b) => a -> b. How might we tell GHC which instance of Read to
  dispatch against the String now? Make the expression print (roundTrip 4) work.
  You will only need the has the type syntax of :: and the parantheses for
  scoping. IDK HELP ME-}
