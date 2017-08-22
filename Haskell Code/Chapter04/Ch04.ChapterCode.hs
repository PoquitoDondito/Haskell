--4.3
-- the definition of Bool
data Bool = False | True
Prelude> :info Bool
data Bool = False | True

Prelude> :t not
not :: Bool -> Bool

Prelude> not True
False

--4.4
--The following are integral numbers:
1 2 199 32442353464675685678
--The following are not integral numbers:
1.3 1/2

Prelude> import GHC.Int
Prelude> 127 :: Int8
127
Prelude> 128 :: Int8

<interactive>:11:1: Warning:
    Literal 128 is out of the Int8 range -128..127
    If you are trying to write a large negative literal,
    use NegativeLiterals
-128
Prelude> (127 + 1) :: Int8
-128

Prelude> import GHC.Int
Prelude> :t minBound
minBound :: Bounded a => a
Prelude> :t maxBound
maxBound :: Bounded a => a

Prelude> minBound :: Int8
-128
Prelude> minBound :: Int16
-32768
Prelude> minBound : Int32
-2147483648
Prelude> minBound :: Int64
-9223372036854775808

Prelude> maxBound :: Int8
127
Prelude> maxBound :: Int16
32767
Prelude> maxBound :: Int32
2147483647
Prelude> maxBound :: Int64
9223372036854775807

Prelude> :i Int
data Int = GHC.TYPES.I# GHC.Prim.Int#
instance Bounded Int -- Defined in 'GHC.Enum'

Prelude> :t (/)
(/) :: Fractional a => a -> a -> a

Prelude> 1 / 2
0.5
Prelude> 4 / 2
2.0

--4.5

Prelude> let x = 5
Prelude> x == 5
True
Prelude x == 6
False
Prelude x < 7
True
Prelude> x > 3
True
Prelude> x /= 5
False

Prelude> :t (==)
(==) :: Eq a => a -> a -> Bool
Prelude> :t (<)
(<) :: Ord a => a -> a-> Bool

Prelude> 'a' == 'a'
True
Prelude> 'a' == 'b'
False
Prelude> 'a' < 'b'
True
Prelude> 'a' > 'b'
False
Prelude> 'a' == 'A'
False
Prelude> "Julie" == "Chris"
False

Prelude> "Julie" > "Chris"
True
Prelude> "Chris" > "Julie"
False

Prelude> ['a', 'b'] > ['b', 'a']
False
Prelude> 1 > 2
False
Prelude> [1, 2] > [2, 1]
False
Prelude> data Mood = Blah | Woot deriving Show
Prelude> [Blah, Woot]
[Blah,Woot]
Prelude> [Blah, Woot] > [Woot, Blah]
<interactive>:28:14
    No instance for (Ord Mood) arising
      from a use of '>'
    In the expression: [Blah, Woot] > [Woot, Blah]

Prelude> "Julie" == 8

<interactive>:38:12:
    No instance for (Num [Char]) arising from
    the literal '8'

    In the second argument of '(==)', namely '8'
    In the expression: "Julie" == 8
    In an equation for 'it': it = "Julie" == 8

--4.6
data bool = False | True

Prelude> :t True
True :: Bool
Prelude> :t "Julie"
"Julie" :: [Char]

Prelude> :t not
not :: Bool -> Bool
Prelude> not True
False

Prelude> let x = 5
Prelude> not (x == 5)
False
Prelude> not (x > 7)
True

-- && is conjunction, so
-- this means "true and true."
Prelude> True && True
True
-- || is disjunction, so
-- this means "false or true."
Prelude> False ||True
True
Prelude> True && False
False
Prelude> not True
False
Prelude> not (True && True)
False

Prelude> if True then "Truthin'" else "Falsin'"
"Truthin'"
Prelude> if False then "Truthin'" else "Falsin'"
"Falsin'"
Prelude> :t if True then "Truthin'" else "Falsin'"
if True then "Truthin'" else "Falsin'" :: [Char]

if CONDITION
then EXPRESSION\_A
else EXPRESSION\_B

Prelude> let x = 0
Prelude> if (x + 1 == 1) then "AWESOME" else "wut"
"AWESOME"

x = 0
if (x + 1 == 1) then "AWESOME" else "wut"
if (0 + 1 == 1) then "AWESOME" else "wut"
if (1 == 1) then "AWESOME" else "wut"
if True then "AWESOME" else "wut"
"AWESOME"

--This does not work
Prelude> let x = 0
Prelude> if x * 100 then "adopt a dog" else "or a cat"

<interactive>:15:7:
    No instance for (Num Bool) arising
    from a use of '*'

    In the expression: (x * 100)
    In the expression:
       if (x * 100)
         then "adopt a dog"
         else "or a cat"

--greetIfCool1.hs
module GreetIfCool1 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  if cool
    then putStrLn "eyyyyy. What's shakin'?"
  else
    putStrLn "pshhhh."
  where cool = coolness == "downright frosty yo"

Prelude> :l greetIfCool1.hs
[1 of 1] Compiling GreetIfCool1.hs
Ok, modules loaded: GreetIfCool1.
Prelude> greetIfcool "downright frosty you"
eyyyyy. What's shakin'?
Prelude> greetIfCool "please love me"
pshhhh.

-- greetIfCool2.hs
module GreetIfCool2 where

GreetIfcool :: String -> IO ()
greetIfCool coolness =
  if cool coolness
    then putStrLn "eyyyyy. What's shakin'?"
  else
    putStrLn "pshhhh."
  where cool v = v == "downright frosty yo"

--4.7
Prelude> :info (,)
data (,) a b = (,) a b

λ> (,) 8 10
(8,10)
λ> (,) 8 "Julie"
(8,"Julie")
λ> (,) True 'c'
(True,'c')
λ> (,) 9

<interactive>:34:1:
    No instance for (Show (b0 -> (a0, b0)))
      (maybe you haven't applied enough arguments to a function?)
      arising from a use of 'print'
    In the first argument of 'print', namely 'it'
    In a stmt of an interactive GHCi command: print it

fst :: (a, b) -> a
snd :: (a, b) -> b

Prelude> let myTup = (1 :: Integer, "blah")
Prelude> :t myTup
myTup :: (Integer, [Char])
Prelude> fst myTup
1
Prelude> snd myTup
"blah"
Prelude> import Data.Tuple
Prelude> swap myTup
("blah",1)
Prelude> 2 + fst (1, 2)
3
Prelude> 2 + snd (1, 2)
4

--4.8
Prelude> let awesome = ["Papuchon", "curry", ":)"]
Prelude> awesome
["Papuchon","curry",":)"]
Prelude> :t awesome
awesome :: [[Char]]

Prelude> let alsoAwesome = ["Quake", "The Simons"]
Prelude> :t (++)
(++) :: [a] -> [a] -> [a]
Prelude> awesome ++ alsoAwesome
["Papuchon","curry",":)","Quake","The Simons"]

Prelude> let allAwesome = [awesome, alsoAwesome]
Prelude> allAwesome
[["Papuchon","curry",":)"],["Quake","The Simons"]]
Prelude> :t allAwesome
allAwesome :: [[[Char]]]
Prelude> :t concat
concat :: [[a]] -> [a]
Prelude> concat allAwesome
["Papuchon","curry",":)","Quake","The Simons"]
