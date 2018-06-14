module ChapterCode where

myNum :: Integer
myNum = 1

myVal = myNum

-- Prelude> :t myVal
-- myVal :: Integer

myNum0 :: Integer
myNum0 = 1

myVal0 f = myNum0

-- Prelude> :t myVal
-- myVal :: t -> Integer

-- Prelude> let myNum = 1 :: Integer
-- Prelude> let myVal f = f + myNum
-- Prelude> :t myVal
-- myVal :: Integer -> Integer

myNum1 :: Num a => a
myNum1 = 1

myVal1 :: Num a => a -> a
myVal1 f = f + myNum1

stillAFunction :: [a] -> [a] -> [a] -> [a]
stillAFunction a b c = a ++ b ++ c

-- Prelude> let myVal f g = myNum
-- Prelude> :t myVa
-- myVal :: t -> t1 -> Integer

-- Prelude> let myVal f g h = myNum
-- Prelude> :t myVal
-- myVal :: t -> t1 -> t2 -> Integer

addOne' :: Integer -> Integer
addOne' x = x + 1

{-
addOne' 1 -- x is now bound to 1
addOne' 1 = 1 + 1
          =     2
addOne' 10
addOne' 10 = 10 + 1
           = 11
-}

bindExp :: Integer -> String
bindExp x = let y = 5 in
              "the integer was: " ++ show x
              ++ " and y was: " ++ show y

{-
bindExp0 :: Integer -> String
bindExp0 x = let z = y + x in
             let y = 5 in "the integer was: "
             ++ show x ++ " and y was: "
             ++ show y ++ " and z was: " ++ show z
-}

bindExp1 :: Integer -> String
bindExp1 x = let x = 10; y = 5 in
               "the integer was: " ++ show x
               ++ " and y was: " ++ show y

-- Prelude> bindExp 9001
-- "the integer was: 10 and y was: 5"

bindExp2 :: Integer -> String
bindExp2 x = let x = 10; y = 5 in "x: " ++ show x
             ++ " y: " ++ show y

-- Prelude> let x = 5
-- Prelude> let y = x + 5
-- Prelude> y
-- 10
-- Prelude> y * 10
-- 100
-- Prelude> let z y = y * 10
-- Prelude> x
-- 5
-- Prelude> y
-- 10
-- Prelude> z 9
-- 90
-- but
-- Prelude> z y
-- 100

triple :: Integer -> Integer
triple x = x * 3

-- (\x -> x * 3) :: Integer -> Integer

-- Prelude> let trip = (\x -> x*3) :: Integer -> Integer

-- Prelude> (\x -> x * 3) 5
-- 15
-- Prelude> \x -> x * 3 1
-- Could not deduce (Num (a0 -> a))
--  arising from the ambiguity check for ‘it’

isItTwo :: Integer -> Bool
isItTwo 2 = True
isItTwo _ = False

-- Prelude> :{
-- *Main| let isItTwo :: Integer -> Bool
-- *Main|     isItTwo 2 = True
-- *Main|     isItTwo _ = False
-- *Main| :}

-- Prelude> isItTwo 2
-- True
-- Prelude> isItTwo 3
-- False

isItTwo0 :: Integer -> Bool
isItTwo0 _ = False
isItTwo0 2 = True

-- <interactive>:9:33: Warning:
--     Pattern match(es) are overlapped
-- Prelude> isItTwo 2
-- False
-- Prelude> isItTwo 3
-- False

isItTwo1 :: Integer -> Bool
isItTwo1 2 = True

-- Prelude> isItTwo 2
-- True
-- Prelude> isItTwo 3

-- *** Exception: :50:33-48:
--   Non-exhaustive patterns
--       in function isItTwo

-- Prelude> :set -Wall
-- Prelude> :{
-- *Main| let isItTwo :: Integer -> Bool
-- *Main|     isItTwo 2 = True
-- *Main| :}

-- <interactive>:28:5: Warning:
--     This binding for ‘isItTwo’ shadows
--     the existing binding
--       defined at <interactive>:20:5

-- <interactive>:28:5: Warning:
--     Pattern match(es) are non-exhaustive
--     In an equation for ‘isItTwo’:

--     Patterns not matched: #x with #x `notElem` [2#]



-- registeredUser2.hs
-- module RegisteredUser where


newtype Username = Username String
newtype AccountNumber = AccountNumber Integer

data User = UnregisteredUser
           | RegisteredUser Username AccountNumber

printUser :: User -> IO ()
printUser UnregisteredUser = putStrLn "UnregisteredUser"
printUser (RegisteredUser (Username name)
                          (AccountNumber acctNum))
          = putStrLn $ name ++ " " ++ show acctNum

-- Prelude> :l code/registeredUser2.hs
-- Prelude> :t RegisteredUser
-- RegisteredUser :: Username -> AccountNumber -> User
-- :t Username
-- Username :: String -> Username
-- Prelude> :t AccountNumber
-- AccountNumber :: Integer -> AccountNumber

-- Prelude> printUser UnregisteredUser
-- UnregisteredUser

-- Prelude> let myUser = (Username "callen")
-- Prelude> let myAcct = (AccountNumber 10456)
-- Prelude> printUser $ RegisteredUser myUser myAcct
-- callen 10456

data WherePenguinsLive =
  Galapagos
  | Antarctica
  | Australia
  | SouthAfrica
  | SouthAmerica
  deriving (Eq, Show)

data Penguin =
  Peng WherePenguinsLive
  deriving (Eq, Show)

-- is it South Africa? If so, return True
isSouthAfrica :: WherePenguinsLive -> Bool
isSouthAfrica SouthAfrica = True
isSouthAfrica Galapagos = False
isSouthAfrica Antarctica = False
isSouthAfrica Australia = False
isSouthAfrica SouthAmerica = False

isSouthAfrica' :: WherePenguinsLive -> Bool
isSouthAfrica' SouthAfrica = True
isSouthAfrica' _           = False

gimmeWhereTheyLive :: Penguin -> WherePenguinsLive
gimmeWhereTheyLive (Peng whereitlives) = whereitlives

humboldt = Peng SouthAmerica
gentoo = Peng Antarctica
macaroni = Peng Antarctica
little = Peng Australia
galapagos = Peng Galapagos

galapagosPenguin :: Penguin -> Bool
galapagosPenguin (Peng Galapagos) = True
galapagosPenguin _                = False

antarcticPenguin :: Penguin -> Bool
antarcticPenguin (Peng Antarctica) = True
antarcticPenguin _                 = False

-- in this final function, the || operator is an `or` function, which will
-- return True if either value is True
antarcticOrGalapagos :: Penguin -> Bool
antarcticOrGalapagos p =
  (galapagosPenguin p) || (antarcticPenguin p)

f :: (a, b) -> (c, d) -> ((b, d), (a, c))
f = undefined

f0 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f0 x y = ((snd x, snd y), (fst x, fst y ))

f1 :: (a, b) -> (c, d) -> ((b, d), (a, c))
f1 (a, b) (c, d) = ((b, d), (a, c))

-- matchingTuples1.hs
-- module TupleFunctions where

-- These have to be the same type because
-- (+) is a -> a -> a
addEmUp2 :: Num a => (a, a) -> a
addEmUp2 (x,y) = x + y

-- addEmUp2 could also be written like so
addEmUp2Alt :: Num a => (a, a) -> a
addEmUp2Alt tup = (fst tup) + (snd tup)

fst3 :: (a,b,c) -> a
fst3 (x,_,_) = x

third3 :: (a,b,c) -> c
third3 (_,_,x) = x

-- Prelude> :l code/matchingTuples1.hs
-- [1 of 1] Compiling TupleFunctions
-- Ok, modules loaded: TupleFunctions

-- Prelude> :browse TupleFunctions
-- addEmUp2 :: Num a => (a, a) -> a
-- addEmUp2Alt :: Num a => (a, a) ->
-- fst3 :: (a, b, c) -> a
-- thrid3 :: (a, b, c) -> c

-- Prelude> addEmUp2 (10, 20)
-- 30
-- Prelude> addEmUp2Alt (10, 20)
-- 30
-- Prelude> fst3 ("blah", 2, [])
-- "blah"
-- Prelude> third3 ("blah", 2, [])
-- []

-- data Bool = False | True

-- if x + 1 == 1 then "AWESOME" else "wut"

funcZ x =
  case x + 1 == 1 of
    True  -> "Awesome"
    False -> "wut"

pal xs =
  case xs == reverse xs of
    True  -> "yes"
    False -> "no"

pal' xs =
  case xs of
    True  -> "yes"
    False -> "no"

-- greetIfCool3.hs
-- module GreetIfCool3 where

greetIfCool :: String -> IO ()
greetIfCool coolness =
  case cool of
    True  -> putStrLn "eyyyyy. What's shakin'?"
    False -> putStrLn "pshhhh."
  where cool = coolness == "downright frosty yo"

-- Prelude> :t flip
-- flip :: (a -> b -> c) -> b -> a -> c

-- -- using (-) as our (a -> b -> c)
-- Prelude> (-) as our (a -> b -> c)
-- 9
-- Prelude> let fSub = flip (-)
-- Prelude> fSub 10 1
-- -9
-- Prelude> fSub 5 10
-- 5

-- flip :: (a -> b -> c) -> b -> a -> c
-- flip f x y = f y x

myFlip :: (a -> b -> c) -> b -> a -> c
myFlip f = \ x y -> f y x

-- flip :: (a -> b -> c) -> b -> a -> c
-- flip f x y = f y x

returnLast :: a -> b -> c -> d -> d
returnLast _ _ _ d = d

returnLast' :: a -> (b -> (c -> (d -> d)))
returnLast' _ _ _ d = d

-- returnBroke :: (((a -> b) -> c) -> d) -> d
-- returnBroke _ _ _ d = d

-- Couldn't match expected type ‘t0 -> t1 -> t2 -> t2’
--             with actual type ‘d’
-- ‘d’ is a rigid type variable bound by
-- the type signature for
--   returnBroke :: (((a -> b) -> c) -> d) -> d
-- The equation(s) for ‘returnBroke’ have four arguments,
-- but its type ‘(((a -> b) -> c) -> d) -> d’
--   has only one

returnAfterApply :: (a -> b) -> a -> c -> b
returnAfterApply f a c = f a

-- Prelude> :t compare
-- compare :: Ord a => a -> a -> Ordering
-- Prelude> :info Ordering
-- data Ordering - LT | EQ | GT
-- Prelude> compare 10 9
-- GT
-- Prelude> compare 9 9
-- EQ
-- Prelude> compare 9 10
-- LT

data Employee = Coder
              | Manager
              | Veep
              | CEO
              deriving (Eq, Ord, Show)

reportBoss :: Employee -> Employee -> IO ()
reportBoss e e' =
  putStrLn $ show e ++ " is the boss of " ++ show e'

employeeRank :: Employee -> Employee -> IO ()
employeeRank e e' =
  case compare e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee is the boss"
    LT -> (flip reportBoss) e e'

-- Prelude> employeeRank Veep CEO
-- CEO is the boss of Veep
-- Prelude> employeeRank compare CEO Veep
-- CEO is the boss of Veep

codersRuleCEOsDrool :: Employee -> Employee -> Ordering
codersRuleCEOsDrool Coder Coder = EQ
codersRuleCEOsDrool Coder _     = GT
codersRuleCEOsDrool _ Coder     = LT
codersRuleCEOsDrool e e'        = compare e e'

employeeRank' :: (Employee -> Employee -> Ordering)
              -> Employee
              -> Employee
              -> IO ()
employeeRank' f e e' =
  case f e e' of
    GT -> reportBoss e e'
    EQ -> putStrLn "Neither employee is the boss"
    LT -> (flip reportBoss) e e'

-- Prelude> employeeRank compare Coder CEO
-- CEO is the boss of Coder
-- Prelude> employeeRank codersRuleCEOsDrool
-- Coder is the boss of CEO
-- Prelude> employeeRank codersRuleCEOsDrool CEO Coder
-- Coder is the boss of CEO

-- if <condition>
--   then <result if True>
--   else <result if False>

-- Prelude> let x = 0
-- Prelude> if (x + 1 == 1) then "AWESOME" else "wut"
-- "AWESOME"

-- -- alternatively
-- Prelude> let x = 0
-- Prelude> :{
-- Prelude| if (x + 1 == 1)
-- Prelude|    then "AWESOME"
-- Prelude|    else "wut"
-- Prelude| :}
-- "AWESOME"

-- Prelude> let x = 0
-- Prelude> :{
-- Prelude| if (x + 1 == 1)
-- Prelude| then "AWESOME"
-- Prelude| else "wut"
-- Prelude| :}
-- "AWESOME"

myAbs :: Integer -> Integer
myAbs x = if x < 0 then (-x) else x

myAbs' :: Integer -> Integer
myAbs' x
  | x < 0     = (-x)
  | otherwise = x

-- *Main> myAbs (-10)
-- 10
-- *Main> myAbs 10
-- 10

bloodNa :: Integer -> String
bloodNa x
  | x < 135   = "too low"
  | x > 145   = "too high"
  | otherwise = "just right"

-- c is the hypotenuse of the triangle. Google it.

isRight :: (Num a, Eq a) => a -> a -> a -> String
isRight a b c
  | a^2 + b^2 == c^2 = "RIGHT ON"
  | otherwise        = "not right"

dogYrs :: Integer -> Integer
dogYrs x
  | x <= 0    = 0
  | x <= 1    = x * 15
  | x <= 2    = x * 12
  | x <= 4    = x * 8
  | otherwise = x * 6

avgGrade :: (Fractional a, Ord a) => a -> Char
avgGrade x
  | y >= 0.9 = 'A'
  | y >= 0.8 = 'B'
  | y >= 0.7 = 'C'
  | y >= 0.59 = 'D'
  | y < 0.59='F'
  where y = x / 100

-- (.) :: (b -> c) -> (a -> b) -> a -> c
-- (f . g) x = f (g x)

-- Prelude> negate . sum $ [1, 2, 3, 4, 5]
-- -15

-- -- which is evaluated like this
-- negate . sum $ [1, 2, 3, 4, 5]

-- -- note: this code works as well
-- negate (sum [1, 2, 3, 4, 5])
-- negate (15)
-- -15

-- negate . sum [1, 2, 3, 4, 5]
-- negate . 15

-- Prelude> (negate. sum) [1, 2, 3, 4, 5]
-- -15

-- Prelude> take 5 . reverse $ [1..10]
-- [10, 9, 8, 7, 6]

-- Prelude> take 5 (enumFrom 3)
-- [3, 4, 5, 6, 7]

-- Prelude> take 5 . enumFrom $ 3
-- [3, 4, 5, 6, 7]

-- Prelude> let f x = take 5 . enumFrom $ x
-- Prelude> f 3
-- [3, 4, 5, 6, 7]

-- Prelude> take 5 . filter odd. enumFrom $ 3
-- [3, 5, 7, 9, 11]

--NOT FINISHED, CONTINUE ON 7.9

add :: Int -> Int -> Int
add x y = x + y

addPF :: Int -> Int -> Int
addPF = (+)

addOne :: Int -> Int
addOne = \x -> x + 1

addOnePF :: Int -> Int
addOnePF = (+1)

printPF :: Show a => a -> IO ()
printPF = putStrLn . show
