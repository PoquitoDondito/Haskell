--3.2
Prelude> :type 'a'
'a' :: Char

Prelude> :type "Hello!"
"Hello!" :: [Char]

--3.3
Prelude> print "hello world!"
"hello world!"

Prelude> putStrLn "hello world!"
hello world!
Prelude>

Prelude> putStr "hello world"
hello world!Prelude>

--print1.hs
module Print1 where

main :: IO ()
main = putStrLn "hello world!"

Prelude> :l print1.hs
[1 of 1] Compiling Print1
Ok, modules loaded: Print1.
*Print1> main
hello world!
*Print1>

Prelude> :set prompt "λ> "
λ> :r
Ok, modules loaded: Print1.
λ> main
hello world!
λ>

--print2.hs
module Print2 where

main :: IO ()
main = do
  putStrLn "Count to four for me:"
  putStr   "one, two"
  putStr   ", three, and"
  putStrLn " four!"

Prelude> :l print2.hs
[1 of 1] Compiling Print2
Ok, modules loaded: Print2.
Prelude> main
Count to four for me:
one, two, three, and four!
Prelude>

-- print3.hs
module Print 3 where

myGreeting :: String
-- The above line reads as: "myGreeting has the type String"
myGreeting = "hello" ++ " world!"
-- Could also be: "hello" ++ " " ++ "world!"
-- to obtain the same result.

hello :: String
hello = "hello"

world :: String
world = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting = concat [hello, " ", world]

Prelude> :load print3.hs
[1 of 1] Compiling Print3
Ok, modules loaded: Print3.
*Print3> main
hello world!
hello world!
*Print3

--3.4
module TopOrLocal where

topLevelFunction :: Integer -> Integer
topLevelFunction x = x + woot + topLevelValue
  where woot :: Integer
        woot = 10

topLevelValue :: Integer
topLevelValue = 5

--3.5
++ has the type [a] -> [a] -> [a]
concat has the type [[a]] -> [a]

-- Here's how we query that in ghci:
Prelude> :t (++)
(++) :: [a] -> [a] -> [a]
Prelude> :t concat
concat :: [[a]] -> [a]

Prelude> concat [[1, 2], [3, 4, 5], [6, 7]]
[1,2,3,4,5,6,7]
Prelude> concat ["Iowa", "Melman", "Django"]
"IowaMelmanDjango"

Prelude> "hello" ++ " Christ"
"hello Chris"

--but

Prelude> "hello" ++ [1, 2, 3]

<interactive>:14:13:
    No instance for (Num Char) arising
      from the literal '1'
    In the expression: 1
    In the second argument of '(++)'
       namely '[1, 2, 3]'
    In the expression: "hello" ++ [1, 2, 3]

--3.6
-- print3flipped.hs
module Print3Flipped where

myGreeting :: String
myGreeting = (++) "hello" " world!"

hello :: String
hello = "world!"

main :: IO ()
main = do
  putStrLn myGreeting
  putStrLn secondGreeting
  where secondGreeting =
          (++) hello ((++) " " world)

Prelude :i (++)
(++) :: [a] -> [a] -> [a]   -- Defined in 'GHC.Base'
infixr 5 ++

-- print3broken.hs
module Print3Broken where

printSecond :: IO ()
printSecond = do
  putStrLn greeting

main :: IO ()
main = do
  putStrLn greeting
  printSecond
  where greeting = "Yarrrrr"

Prelude> :l print3broken.hs
[1 of 1] Compiling Print3Broken      ( print3broken.hs, interpreted )

print3broken.hs:6:12: Not in scope: 'greeting'
Failed, modules loaded: none.

--3.7

Prelude> :t 'c'
'c' :: Char
Prelude> :t "c"
"c" :: [Char] -- List of Char is String, same thing.

-- the : operator, called "cons," builds a list
Prelude> 'c' : "hris"
"chris"
Prelude> 'p' : ""
"p"

-- head returns the head or the first element of a list
Prelude> head "Papuchon"
'p'

-- tail returns the list with the head chopped off
Prelude> tail "Papuchon"
"apuchon"

-- take returns the specified number of elements
--from the list, starting from the left:
Prelude> take 1 "Papuchon"
"p"
Prelude> take 0 "Papuchon"
""
Prelude> take 6 "Papuchon"
"Papuch"

-- drop returns the remainder of the list after the
-- specified number of elements has been dropped:
Prelude> drop 4 "Papuchon"
"chon"
Prelude> drop 9901 "Papuchon"
""
Prelude> drop 1 "Papuchon"
"apuchon"

-- we've already seen the ++ operator
Prelude> "Papu" ++ "chon"
"Papuchon"
Prelude> "Papu" ++ ""
"Papu"

-- !! returns the element that is in the specified
-- position in the list. Note that this is an
-- indexing function, and the indices in Haskell start
-- from 0. That means the first element of your
-- list is 0, not 1, when using this function.
Prelude> "Papuchon" !! 0
'p'
Prelude> "Papuchon" !! 4
'c'

Prelude> head ""
*** Exception: Prelude.head: empty list
Prelude> "" !! 4
*** Exception: Prelude.!!: index too large
